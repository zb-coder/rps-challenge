require 'sinatra/base'
require "sinatra/reloader" #ßif development?

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
get '/' do
erb(:index)
end

get '/name' do
  @name = params[:name]
  erb(:name)
end

post '/name' do
  @name = params[:name]
  erb(:name)
end
run! if app_file == $0
end