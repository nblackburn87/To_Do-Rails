require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module ToDo
  class Application < Rails::Application
  config.action_controller.permit_all_parameters = true
  end
end
