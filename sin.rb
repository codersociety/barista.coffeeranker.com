require 'rubygems'
require 'sinatra'
require 'handlebars'
require 'mongoid'

Mongoid.load!("mongoid.yml")

get '/' do
	handlebars = Handlebars::Context.new
	template = handlebars.compile("{{say}}{{what}}")
	template.call(:say => "Hey", :what => "Yuh!") #=> "Hey Yuh!"
end


configure do
   Mongoid.configure do |config|
    name = "test"
    host = "localhost"
    config.master = Mongo::Connection.new.db(name)
    config.slaves = [
      Mongo::Connection.new(host, 27017, :slave_ok => true).db(name)
    ]
    config.persist_in_safe_mode = false
  end
end



