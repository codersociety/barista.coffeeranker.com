require 'rubygems'
require 'sinatra'
require 'handlebars'

get '/' do
	handlebars = Handlebars::Context.new
	template = handlebars.compile("{{say}}{{what}}")
	template.call(:say => "Hey", :what => "Yuh!") #=> "Hey Yuh!"
end


