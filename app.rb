
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:shopbase.db"

class Client < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true
	validates :datetime, presence: true
end

class Idiot < ActiveRecord::Base
end

get '/' do
	erb "Hello! "
end

get '/visit' do
	erb :visit
end

post '/visit' do
	c = Client.new params[:client]
	if c.save
		erb "Thank you!"
	else
		erb "Sorry, try again!"
	end
end