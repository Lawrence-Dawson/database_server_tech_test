require 'sinatra/base'

class DbApp < Sinatra::Base
  set :port, 4000
  $db = {}

  get '/' do
    $db == {} ? 'No data in the database' : 'There is data in the database'
  end

  get '/get' do
    split = request.query_string.split('=')
    key = split[1]
    $db[key]
  end

  get '/set' do
    split = request.query_string.split('=')
    $db[split[0]] = split[1]
  end

  run! if app_file == $0
end
