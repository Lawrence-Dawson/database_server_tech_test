require 'sinatra/base'

class DbApp < Sinatra::Base
  set :port, 4000
  $db = {}

  get '/' do
    $db == {} ? 'No data' : 'There is data'
  end

  get '/get' do
    p params[:key]
  end

  get '/set' do
    p params[:key]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
