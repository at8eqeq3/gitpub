class GhPshbSubscribeWorker
  include Sidekiq::Worker
  
  def perform u, r
    user = User.find u
    repo = user.repos.find r
    clt = Octokit::Client.new(access_token: user.gh_token)
    clt.subscribe("https://github.com/#{repo.gh_name}/events/push", 'http://home.dxfoto.ru/callback')
  end
end