$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "workforce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "workforce"
  spec.version     = Workforce::VERSION
  spec.authors     = ["Josh Sullivan"]
  spec.email       = ["jjs5286@gmail.com"]
  spec.homepage    = "https://github.com/dantechristmas"
  spec.summary     = "Workforce Assignment Engine"
  spec.description = "Engine for creating shifts and allowing workers to apply for shifts."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.4"
  spec.add_dependency 'validates_timeliness'

  spec.add_development_dependency "pg"
  spec.add_development_dependency "rubocop-airbnb", "~> 1.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "shoulda-matchers", "~> 4.0"
end
