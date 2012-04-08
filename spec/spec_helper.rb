require 'rubygems'
require 'sinatra'
require 'mongoid'

require '/Users/jimallen/Code/Barrista/application.rb'

require 'rack/test'
require 'rspec'


RSpec.configure do |config|

  config.include Rack::Test::Methods

  def app
    Application
  end
end