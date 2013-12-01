Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GH_KEY'], ENV['GH_SECRET'], scope: "user,repo"
end