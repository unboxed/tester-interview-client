require "json"

require "capybara"
require "capybara/dsl"
require "capybara/webkit"

require "rspec"

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webkit
  config.app_host = ENV["ACTIONS_SERVER_URL"]
end

Capybara::Webkit.configure do |config|
  config.allow_url(ENV["ACTIONS_SERVER_URL"])
end
