
require 'erb'

class Example
  def self.read path
    File.read(File.join(File.dirname(__FILE__), path))
  end
  def call env
    app_id = self.class.read('app_id.txt').strip
    [200, {}, [ERB.new(self.class.read('example.html')).result(binding)]]
  end
end
