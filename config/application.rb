require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CareerEdApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.application_name = 'CareerEd_App'
    config.load_defaults 6.1
    
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end