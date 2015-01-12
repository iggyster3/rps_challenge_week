require 'sinatra/base'
require 'sinatra/reloader' if :development?
require './lib/setup.rb'
require './lib/Game.rb'

class Server < Sinatra::Base

  enable :session

  set :public, "public"
  set :views, "views"

  GAME = Game.new


  get '/' do
    erb :index
  end

  get '/maingame' do

    @player1 = params[:name]

    session[:p] = @player

    erb :maingame

  end

  get '/maingame_1'do

    @computer = GAME.computers_option
    @human = params[:choice]

    case [@human, @computer]
      when ['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']
        redirect '/winnerpage'
      when ['rock', 'rock'], ['scissors', 'scissors'], ['paper', 'paper']
        redirect '/drawpage'
      when ['rock', 'paper'], ['scissors', 'rock'], ['paper', 'scissors']
        redirect '/loserpage'
      end

    erb :maingame_1
  end

  get '/winnerpage' do
    erb :winnerpage
  end

  get '/loserpage' do
    erb :loserpage
  end

  get '/drawpage' do
    erb :drawpage
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
