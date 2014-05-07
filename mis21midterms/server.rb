require 'sinatra'
require './expense'

expenses = []



get '/' do 
	erb :index
end

get '/new' do 
	erb :new
end


post 'index' do
	@name = params[:item]
	@amount = params[:amount]
	erb :index
end

post '/save' do
	@id = 0
	@name = params[:item]
	@amount = params[:amount]
	redirect to '/'
end

get '/' do 
	erb :index
end

get '/show/:id' do 
	erb :show
end