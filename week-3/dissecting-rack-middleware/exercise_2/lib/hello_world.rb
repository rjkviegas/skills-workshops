class HelloWorldApp
  def self.call(env)
    [200, {}, ['Hello Exercise 2']]
  end
end
