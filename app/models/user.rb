class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.gh_uid     = auth['uid']
      user.gh_name    = auth['info']['name']
      user.gh_login   = auth['info']['nickname']
      user.gh_email   = auth['info']['email']
      user.gh_profile = auth['info']['urls']['GitHub']
      user.gh_website = auth['info']['urls']['Blog']
      # TODO add github-independent fields for user's info
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
