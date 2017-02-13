class HelloWorldApp
  def self.call(env)
    [200, {}, ["Hello #{env['QUERY_STRING']}, your address is #{env['REMOTE_ADDRESS']}"]]
  end
end
