require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module Template
  class Application < Rails::Application

    config.api_only = true

    config.eager_load_paths += %W(#{config.root}/lib)
  end
end
