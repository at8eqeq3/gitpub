class User < ActiveRecord::Base
  has_many :repos
  def self.create_with_omniauth(auth)
    create! do |user|
      user.gh_uid     = auth['uid']
      user.gh_name    = auth['info']['name']
      user.gh_login   = auth['info']['nickname']
      user.gh_email   = auth['info']['email']
      user.gh_profile = auth['info']['urls']['GitHub']
      user.gh_website = auth['info']['urls']['Blog']
      user.gh_token   = auth['credentials']['token']
      # TODO add github-independent fields for user's info
      user.name       = auth['info']['name']
    end
  end
  def self.update_with_omniauth(auth)
    update! do |user|
      user.gh_uid     = auth['uid']
      user.gh_name    = auth['info']['name']
      user.gh_login   = auth['info']['nickname']
      user.gh_email   = auth['info']['email']
      user.gh_profile = auth['info']['urls']['GitHub']
      user.gh_website = auth['info']['urls']['Blog']
    end
  end
end
