
require 'erb'

class Example
  def self.read path
    File.read(File.join(File.dirname(__FILE__), path))
  end

  def self.parse_cookie env
    Rack::Utils.parse_query(env['HTTP_COOKIE'].match(/"(.+?)"/)[1])
  end

  def call env
    app_id       = self.class.read('app_id.txt').strip
    access_token = self.class.parse_cookie(env)['access_token']

    [200, {}, [ERB.new(self.class.read('example.html')).result(binding)]]
  end
end
