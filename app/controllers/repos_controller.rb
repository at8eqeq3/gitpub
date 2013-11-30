class ReposController < ApplicationController
  #skip_before_action :require_login,             only: [:gh_callback]
  before_action :require_login,             except: [:gh_callback]
  skip_before_action :verify_authenticity_token, only: [:gh_callback]
  
  def connect
    clt = Octokit::Client.new(access_token: current_user.gh_token)
    @repos = clt.repos
  end
  
  def create
    if params[:repos]
      total  = params[:repos].count
      added  = 0
      failed = 0
      params[:repos].each do |param, value|
        if value
          repo = current_user.repos.create(gh_name: param)
          if repo.save
            GhRepoFetchWorker.perform_async(repo.id)
            GhPshbSubscribeWorker.perform_async(current_user.id, repo.id)
            added += 1
          else
            failed += 1
          end
        end
      end
      if added == 0
        redirect_to connect_repos_url, danger: "No repos of #{total} where added"
      else
        if added == total
          redirect_to root_url, info: "#{added} of #{total} repos are enqueued"
        else
          if added == 1
            redirect_to root_url, info: "#{added} repo is enqueued"
          else
            redirect_to root_url, info: "#{added} repos are enqueued"
          end
        end
      end
    else
      redirect_to connect_repos_url, warning: "No repos where selected"
    end
  end
  
  def gh_callback
    puts request
  end
  
end
