# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "anjlab-bootstrap-rails"
  s.version = "3.0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yury Korolev"]
  s.date = "2013-12-01"
  s.description = "Twitter Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3 projects"
  s.email = ["yury.korolev@gmail.com"]
  s.files = [".gitignore", ".gitmodules", "Gemfile", "README.md", "Rakefile", "app/assets/fonts/twitter/glyphicons-halflings-regular.eot", "app/assets/fonts/twitter/glyphicons-halflings-regular.svg", "app/assets/fonts/twitter/glyphicons-halflings-regular.ttf", "app/assets/fonts/twitter/glyphicons-halflings-regular.woff", "app/assets/javascripts/twitter/bootstrap.js", "app/assets/javascripts/twitter/bootstrap/affix.js", "app/assets/javascripts/twitter/bootstrap/alert.js", "app/assets/javascripts/twitter/bootstrap/button.js", "app/assets/javascripts/twitter/bootstrap/carousel.js", "app/assets/javascripts/twitter/bootstrap/collapse.js", "app/assets/javascripts/twitter/bootstrap/dropdown.js", "app/assets/javascripts/twitter/bootstrap/modal.js", "app/assets/javascripts/twitter/bootstrap/popover.js", "app/assets/javascripts/twitter/bootstrap/scrollspy.js", "app/assets/javascripts/twitter/bootstrap/tab.js", "app/assets/javascripts/twitter/bootstrap/tooltip.js", "app/assets/javascripts/twitter/bootstrap/transition.js", "app/assets/stylesheets/twitter/bootstrap.scss", "app/assets/stylesheets/twitter/bootstrap/_alerts.scss", "app/assets/stylesheets/twitter/bootstrap/_badges.scss", "app/assets/stylesheets/twitter/bootstrap/_bootstrap.scss", "app/assets/stylesheets/twitter/bootstrap/_breadcrumbs.scss", "app/assets/stylesheets/twitter/bootstrap/_button-groups.scss", "app/assets/stylesheets/twitter/bootstrap/_buttons.scss", "app/assets/stylesheets/twitter/bootstrap/_carousel.scss", "app/assets/stylesheets/twitter/bootstrap/_close.scss", "app/assets/stylesheets/twitter/bootstrap/_code.scss", "app/assets/stylesheets/twitter/bootstrap/_component-animations.scss", "app/assets/stylesheets/twitter/bootstrap/_dropdowns.scss", "app/assets/stylesheets/twitter/bootstrap/_forms.scss", "app/assets/stylesheets/twitter/bootstrap/_glyphicons.scss", "app/assets/stylesheets/twitter/bootstrap/_grid.scss", "app/assets/stylesheets/twitter/bootstrap/_input-groups.scss", "app/assets/stylesheets/twitter/bootstrap/_jumbotron.scss", "app/assets/stylesheets/twitter/bootstrap/_labels.scss", "app/assets/stylesheets/twitter/bootstrap/_list-group.scss", "app/assets/stylesheets/twitter/bootstrap/_media.scss", "app/assets/stylesheets/twitter/bootstrap/_mixins.scss", "app/assets/stylesheets/twitter/bootstrap/_modals.scss", "app/assets/stylesheets/twitter/bootstrap/_navbar.scss", "app/assets/stylesheets/twitter/bootstrap/_navs.scss", "app/assets/stylesheets/twitter/bootstrap/_normalize.scss", "app/assets/stylesheets/twitter/bootstrap/_pager.scss", "app/assets/stylesheets/twitter/bootstrap/_pagination.scss", "app/assets/stylesheets/twitter/bootstrap/_panels.scss", "app/assets/stylesheets/twitter/bootstrap/_popovers.scss", "app/assets/stylesheets/twitter/bootstrap/_print.scss", "app/assets/stylesheets/twitter/bootstrap/_progress-bars.scss", "app/assets/stylesheets/twitter/bootstrap/_responsive-utilities.scss", "app/assets/stylesheets/twitter/bootstrap/_scaffolding.scss", "app/assets/stylesheets/twitter/bootstrap/_tables.scss", "app/assets/stylesheets/twitter/bootstrap/_theme.scss", "app/assets/stylesheets/twitter/bootstrap/_thumbnails.scss", "app/assets/stylesheets/twitter/bootstrap/_tooltip.scss", "app/assets/stylesheets/twitter/bootstrap/_type.scss", "app/assets/stylesheets/twitter/bootstrap/_utilities.scss", "app/assets/stylesheets/twitter/bootstrap/_variables.scss", "app/assets/stylesheets/twitter/bootstrap/_wells.scss", "bootstrap", "bootstrap-rails.gemspec", "lib/bootstrap-rails.rb", "lib/bootstrap-rails/engine.rb", "lib/bootstrap-rails/railtie.rb", "lib/bootstrap-rails/version.rb", "test/test_helper.rb", "vendor/assets/javascripts/holder.js"]
  s.homepage = "https://github.com/anjlab/bootstrap-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3 projects"
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.0"])
      s.add_runtime_dependency(%q<sass>, [">= 3.2"])
      s.add_development_dependency(%q<bundler>, [">= 1.0"])
      s.add_development_dependency(%q<rails>, [">= 3.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.0"])
      s.add_dependency(%q<sass>, [">= 3.2"])
      s.add_dependency(%q<bundler>, [">= 1.0"])
      s.add_dependency(%q<rails>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.0"])
    s.add_dependency(%q<sass>, [">= 3.2"])
    s.add_dependency(%q<bundler>, [">= 1.0"])
    s.add_dependency(%q<rails>, [">= 3.1"])
  end
end
