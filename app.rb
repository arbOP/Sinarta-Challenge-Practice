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

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
