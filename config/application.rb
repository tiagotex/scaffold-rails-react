require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Template
  class Application < Rails::Application
  	config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false

      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    config.api_only = true

    config.eager_load_paths += %W(#{config.root}/lib)
  end
end
