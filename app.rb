require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @instance = PigLatinizer.new
        @phrase = (params[:user_phrase])
        erb :display 
    end

end
