require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb:index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    erb:play
  end

  get '/attack' do
    Game.new.attack($player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
