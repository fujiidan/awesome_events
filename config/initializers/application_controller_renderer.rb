# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end


module AwesomeEvents
  class Application < Rails::Application
    config.load_defaults 6.0
    config.time_zone = "Tokyo"
  end
end