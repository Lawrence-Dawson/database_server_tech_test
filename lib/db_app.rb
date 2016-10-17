require 'sinatra/base'

class DbApp < Sinatra::Base
  set :port, 4000
  $db = {:name => 'Lawrence'}

  get '/' do
    $db == {} ? 'No data' :   'There is data'
  end

  get '/get/key=somekey' do
    $db[params[:somekey]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
