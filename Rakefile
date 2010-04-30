
# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

# gem management
Echoe.new('facebook_graph', '0.1.0') do |p|
  p.summary    = "Ruby SDK for Facebook's new Graph API"
  p.description = "A Ruby SDK that wraps Facebook's new Graph API.  Allows read/write access to the API and provides cookie validation for Facebook Connect sites.  Supports Net::HTTP and Typhoeus connections out of the box and accepts custom modules for other services."
  p.url            = "http://github.com/arsduo/ruby-sdk"
  p.author         = ["Alex Koppel", "Rafi Jacoby", "Context Optional"]
  p.email          = "alex@alexkoppel.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

desc 'bacon test'
task :bacon do
  sh "#{RUBY} -S bacon -I lib test/*_test.rb"
end
