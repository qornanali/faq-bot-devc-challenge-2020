require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module FaqBotMig
  class Application < Rails::Application
    config.load_defaults 6.0
    config.api_only = true
    config.hosts << '879d2e01ee3f.ngrok.io'
  end
end