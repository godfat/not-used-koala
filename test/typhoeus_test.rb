
require 'test/helper'
require 'test/no_access_token_test'
require 'test/with_access_token_test'

# run the tests with Typhoeus
puts "Running Typhoeus tests"
$service = Facebook::TyphoeusService
