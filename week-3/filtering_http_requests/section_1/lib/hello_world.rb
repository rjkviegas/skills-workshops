class HelloWorldApp
  def self.call(env)
    [200, {}, ['Hello world']]
  end
end
