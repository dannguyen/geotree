module Geotree
  class Engine < ::Rails::Engine
    isolate_namespace Geotree
  
    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.assets false
      g.helper false
    end
  end
end
