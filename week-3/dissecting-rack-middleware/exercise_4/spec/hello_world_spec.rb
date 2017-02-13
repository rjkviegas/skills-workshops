require 'spec_helper'
require 'rack/test'
require 'hello_world'

describe 'hello world' do
  include Rack::Test::Methods

  def app
    HelloWorldApp
  end

  it 'responds to get with no params, and returns request method' do
    get '/'
    expect(last_response.body).to include('nothing!')
    expect(last_response.body).to include('via GET request')
  end

  it 'responds with post details' do
    post '/my-lovely-path?message=exercise-4'
    expect(last_response.body).to include('exercise-4')
    expect(last_response.body).to include('/my-lovely-path')
  end
end
