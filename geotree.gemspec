$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "geotree/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "geotree"
  s.version     = Geotree::VERSION
  s.authors     = ["Dan Nguyen"]
  s.email       = ["dansonguyen@gmail.com"]
  s.homepage    = "http://github.com/dannguyen/geotree"
  s.summary     = "Hierarchies of geographies"
  s.description = "Hierarchies of geographies"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.2.15"
  s.add_dependency "geocoder"
  s.add_dependency "ancestry"
  s.add_development_dependency "sqlite3"
end
