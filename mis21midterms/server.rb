require 'sinatra'
require './expense'

expenses = []



get '/' do 
	expenses.each do |n|
		puts n
	end
		
	erb :index
end

get '/new' do 
	erb :new
end


post 'index' do	
	erb :index
end

post '/save' do

	@id = 0
	@name = params[:item]
	@amount = params[:amount]
	
	expense = Expense.new(@id+1, @name, @amount)
	expenses << expense
	redirect to '/'
end

get '/' do 
	erb :index
end

get '/show/:id' do 
	erb :show
end