require_relative '../hello'
require 'test/unit'
require 'rack/test'

set :environment, :test

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_root_returns_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello World!!!', last_response.body
  end
end
