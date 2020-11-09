require 'validates_timeliness'

module Workforce
  class Engine < ::Rails::Engine
    isolate_namespace Workforce

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
