require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Fav football team?"
end

get '/pasta' do
  "chicken alfredo"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end
