require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @pig = PigLatinizer.new
    @pig_text = @pig.parse(params[:user_phrase])
    erb :user_output
  end
end