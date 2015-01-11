require 'sinatra/base'
require 'sinatra/reloader' if :development?

class Server < Sinatra::Base

  enable :session

  set :public_folder, views

  get '/' do
    erb :index
  end

  get '/maingame' do

    @player1 = params[:name]

    session[:p] = @player

    erb :maingame

  end

  get '/maingame_1'do

    @rps_options = ['rock', 'paper', 'scissors']
    @computer_choice = @rps_options.sample
    @human = params[:choice]

    case [@human, @computer_choice]
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
