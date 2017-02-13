class HelloWorldApp
  # method getting quite unwieldy now - feel free to refactor once your tests are green
  def self.call(env)
    request = Rack::Request.new(env)
    message = request.params['message'] || 'nothing!'
    path = request.path
    request_method = request.request_method

    response_string = "Hello, you sent 'message = #{message}', to #{path}, via #{request_method} request"

    response = Rack::Response.new
    response.finish
  end
end
