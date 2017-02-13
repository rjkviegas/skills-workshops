require 'spec_helper'
require 'rack/test'
require 'hello_world'

describe 'hello world' do
  include Rack::Test::Methods

  def app
    HelloWorldApp
  end

  it 'says hello' do
    get '/'
    expect(last_response.body).to eq('Hello world, would you like some tea?')
  end

  it 'is ok' do
    get '/'
    expect(last_response.status).to eq(418)
  end

end
