require 'sinatra/base'

class DbApp < Sinatra::Base
  set :port, 4000
  $db = {}

  get '/' do
    $db == {} ? 'No data' : 'There is data'
  end

  get '/get' do
    split = request.query_string.split('=')
    key = split[1]
    p $db[key]
  end

  get '/set' do
    split = request.query_string.split('=')
    $db[split[0]] = split[1]
  end

  run! if app_file == $0
end
