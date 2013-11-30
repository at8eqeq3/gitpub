class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create]
  
  def create
    auth = request.env['omniauth.auth']
    ### here goes this stuff
    # info: {
    #   email: "email",
    #   image: "gravatar url with GH fallback",
    #   name: "full name",
    #   nickname: "login",
    #   urls: {
    #     Blog: "personal website url",
    #     GitHub: "github profile url"
    #   }
    # }, 
    # provider: "github",
    # uid: "numeric id"
    ### as while login may be changed, it's better to use ID to identify a GH user
    ### end
    user = nil
    begin
      user = User.find_by_gh_uid!(auth['uid'])
      user.update_with_omniauth(auth)
    rescue ActiveRecord::RecordNotFound
      user = User.create_with_omniauth(auth)
    end
    session[:user_id] = user.id
    if user.repos.count == 0
      redirect_to connect_repos_url, warning: "Please, connect some repos"
    else
      redirect_to root_url, success: 'Signed in!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, success: 'Signed out!'
  end
end
