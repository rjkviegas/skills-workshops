require 'rack'
require 'rack/server'

class HelloWorldApp
  def self.call(env)
    [200, {}, ['Hello World']]
  end
end

# the next line starts the server - comment out before running your tests
Rack::Server.start(app: HelloWorldApp)
