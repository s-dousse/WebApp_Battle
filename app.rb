require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name1] = params[:name1]    # store the player names in the session
    session[:name2] = params[:name2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:name1]          # extract the instance variables required by the view from the session
    @player2 = session[:name2]
    erb :play
  end

  get '/attack' do
    @player1 = session[:name1]          # get method as we are not changing the state of the program
    @player2 = session[:name2]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end