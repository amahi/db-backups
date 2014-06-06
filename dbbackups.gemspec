$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dbbackups/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dbbackups"
  s.version     = Dbbackups::VERSION
  s.authors     = ["Your Name"]
  s.email       = ["your@email.example.com"]
  s.homepage    = "http://www.amahi.org/apps/yourapp"
  s.license     = "AGPLv3"
  s.summary     = %{Your plugin does this and that.}
  s.description = %{This is an Amahi 7 platform plugin that does fantastic wizbang things with amazing technology.}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
