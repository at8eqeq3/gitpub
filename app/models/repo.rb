class Repo < ActiveRecord::Base
  belongs_to :user
  def self.create_with_github(repodata)
    create! do |repo|
      repo.gh_id       = repodata.id
      repo.gh_name     = repodata.name
      repo.name        = repodata.name
      repo.description = repodata.description
    end
  end
end
