class GhRepoFetchWorker
  include Sidekiq::Worker
  
  def perform r  
    repo = Repo.find(r)
    clt = Octokit::Client.new(access_token: repo.user.gh_token)
    data = clt.repo(repo.gh_name)
    repo.update_attributes(name: data.full_name, description: data.description, gh_id: data.id, gh_name: data.full_name)
    GitClonePullWorker.perform_async r
  end
end