require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestApp
    class Application < Rails::Application
      config.api_only = true
      config.load_defaults 6.0
  
      config.middleware.use Rack::Cors do
        allow do
          origins '*'
          resource '*',
            headers: :any,
            expose: ['access-token', 'expiry', 'token-type', 'uid', 'client'],
            methods: [:get, :post, :options, :delete, :put]
        end
      end
    end
  end

