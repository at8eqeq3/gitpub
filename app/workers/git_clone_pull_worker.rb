class GitClonePullWorker
  include Sidekiq::Worker
  def perform r
    repo = Repo.find r
    ### TODO place git dir paths to external config file
    if RAILS_ENV == 'development'
      path = Rails.root.join('git', repo.gh_name)
    else
      path = Rails.root.join('git')
    end
    if repo.is_cloned?
      ## pull
      cmd = "cd  #{path} && /usr/bin/git pull origin master"
      
    else
      ## clone
      cmd = "/usr/bin/git clone -q -b master git@github.com:#{repo.gh_name} #{path}"
    end
    res = system cmd
    if res
      repo.pulled_at = Time.now
      repo.is_cloned = true
      repo.save
    else
      raise "Failed to #{repo.is_cloned? ? 'pull' : 'clone'} repo #{repo.gh_name}"
    end
  end
end