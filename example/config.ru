
require_relative 'example'

use Rack::ContentType
use Rack::ContentLength

use Rack::Reloader
use Rack::ShowExceptions

run Example.new