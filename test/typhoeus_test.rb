
if respond_to? :require_relative, true
  require_relative 'helper'
  require_relative 'no_access_token_test'
  require_relative 'with_access_token_test'
else
  require 'test/helper'
  require 'test/no_access_token_test'
  require 'test/with_access_token_test'
end

# run the tests with Typhoeus
puts "Running Typhoeus tests"
$service = Facebook::TyphoeusService
