require 'spec_helper'
require 'rack/test'
require 'hello_world'

describe 'hello world' do
  include Rack::Test::Methods

  def app
    HelloWorldApp
  end

  it 'says hello' do
    get '?exercise=3'
    expect(last_response.body).to include('exercise=3')
  end

  it 'has a remote address 127.0.0.1' do
    get '/'
    expect(last_response.body).to include('127.0.0.1')
  end

end
