require 'sinatra/base'

class DbApp < Sinatra::Base
  set :port, 4000
  $db = {}

  get '/' do
    $db == {} ? 'No data' : 'There is data'
  end

  get '/get' do
    query = request.query_string
  end

  get '/set' do
    query = request.query_string
    split = query.split('=')
   $db[split[0]] = split[1]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
