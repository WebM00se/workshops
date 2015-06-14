require File.expand_path('../boot', __FILE__)

require 'rails/all'

require File.expand_path('../preinitializer', __FILE__)

Bundler.require(*Rails.groups)

module Workshops
  class Application < Rails::Application
    config.serve_static_assets = true
  end
end
