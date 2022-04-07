require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb:index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    @player_1_hp = 100
    @player_2_hp = 100
    erb:play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:attack)
  end

  run! if app_file == $0
end
