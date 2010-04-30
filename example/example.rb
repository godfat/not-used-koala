
require 'erb'
require 'yaml'

class Example
  def self.read path
    File.read(File.join(File.dirname(__FILE__), path))
  end

  def self.parse_cookie env
    return {} unless env['HTTP_COOKIE'] =~ /"(.+?)"/
    Rack::Utils.parse_query($1)
  end

  def self.read_config key
    YAML.load(read('example.yaml'))[key]
  end

  def self.current_url e
    "#{e[rack.url_scheme]}://#{e['HTTP_HOST']}#{e['REQUEST_PATH']}" \
                            "#{e['QUERY_STRING']}"
  end

  def call env
    app_id       = self.class.read('app_id.txt').strip
    access_token = self.class.parse_cookie(env)['access_token']

    title        = self.class.read_config('title')
    site_name    = self.class.read_config('site_name')
    link         = self.class.current_url(env)

    [200, {}, [ERB.new(self.class.read('example.html')).result(binding)]]
  end
end
