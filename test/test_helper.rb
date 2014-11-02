require 'coveralls'
Coveralls.wear!('rails')

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

# remove comment to watch all backtrace
#Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# outside of if block
ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)

class ActiveSupport::TestCase
  fixtures :all
end

#fixes other problems with controller tests (url helpers)
class ActionController::TestCase
  setup do
    @routes = Jobs::Engine.routes
  end
end