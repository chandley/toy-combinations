require 'sinatra/base'

class ToyCombination < Sinatra::Base
  get '/' do
    'Hello ToyCombination!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
