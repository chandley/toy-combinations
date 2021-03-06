require 'sinatra/base'

TOYS = %w(doll bunny windy)
BODY_PARTS = %w(head body legs)
 

class ToyCombination < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  set :public_folder, Proc.new { File.join(root, "../public") }
  
  get '/' do
    'Hello ToyCombination!'
    @picture_tags = []
    show_unshuffled = 'bunny'
    BODY_PARTS.each {|body_part| @picture_tags << tag_for_toy_body_part(show_unshuffled,body_part)}
    # BODY_PARTS.each {|body_part| @picture_tags << tag_for_random_body_part(body_part)}
    erb :toy
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  def tag_for_toy_body_part(toy,body_part)
    return "<img id=#{body_part} src='/images/#{toy}_#{body_part}_small.jpg\' alt='#{toy}_#{body_part}' width='300' height='200'>"
  end

  def tag_for_random_body_part(body_part)
    toy = TOYS.shuffle.first
    tag_for_toy_body_part(toy,body_part)
  end


end