require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Drkiq
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.log_level = :debug
    config.log_tags  = [:subdomain, :uuid]
    config.logger    = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
    config.hosts << "dockerails.eba-xpsm9hkk.us-west-2.elasticbeanstalk.com"
  end
end

Rails.application.config.hosts << "dockerails.eba-xpsm9hkk.us-west-2.elasticbeanstalk.com"
