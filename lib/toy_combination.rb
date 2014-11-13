require 'sinatra/base'

class ToyCombination < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }
  
  get '/' do
    'Hello ToyCombination!'
    erb :toy


  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
