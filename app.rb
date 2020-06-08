require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :new
    end
    # code other routes/actions here
    post '/pirate' do
      @pirate = Pirate.new(params[:pirate])

       params[:pirate][:ships].each do |details|
         Ship.new(details)
       end

       @ships = Ship.all

       erb :show
    end

  end
end
