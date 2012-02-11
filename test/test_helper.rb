require "bundler/setup"

# rails stuff
%w{active_record action_view}.each { |x| require x }

# what we're testing
%w{judge formtastic judge/formtastic}.each { |x| require x }

# test requirements
%w{factory_girl factories test/unit setup}.each { |x| require x }