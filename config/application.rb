require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    Mongoid.load!('./config/mongoid.yml')
    config.active_record.raise_in_transactional_callbacks = true
    config.generators { |g| g.orm :active_record }
    # config.generators { |g| g.orm :mongoid }
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '/api/*',
        headers: :any,
        methods: [:get, :options]
      end
    end
  end
end
