require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])    # store the player names in the session
    $player_2 = Player.new(params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player_1.name      # extract the instance variables required by the view from the session
    @player2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player1 = $player_1        # get method as we are not changing the state of the program
    @player2 = $player_2
    Game.new.attack(@player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end