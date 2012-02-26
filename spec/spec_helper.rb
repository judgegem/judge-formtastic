require "bundler/setup"

require "active_record"
require "action_view"
require "judge"
require "formtastic"
require "judge/formtastic"
require "factory_girl"
require "rspec"
require "ostruct"

require_relative "setup"
require_relative "factories"

RSpec.configure do |config|
  config.color_enabled = true
end