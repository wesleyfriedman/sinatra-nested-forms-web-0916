require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
    	"Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
    	erb :new
    end

    post '/pirates' do
    	# binding.pry
    	@pirate = Pirate.new(params[:pirate])
    	params[:pirate][:ships].each do |ship|
    		Ship.new(ship)
    	end
    	@ships = Ship.all
    	erb :show
    end

  end
end