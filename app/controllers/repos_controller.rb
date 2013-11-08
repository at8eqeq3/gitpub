class ReposController < ApplicationController
  def connect
    clt = Octokit::Client.new(access_token: current_user.gh_token)
    @repos = clt.repos
  end
end
