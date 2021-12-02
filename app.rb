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
    $player1 = Player.new(params[:name1])    # store the player names in the session
    $player2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name         # extract the instance variables required by the view from the session
    @player2 = $player2.name
    erb :play
  end

  get '/attack' do
    @player1 = $player1.name        # get method as we are not changing the state of the program
    @player2 = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end