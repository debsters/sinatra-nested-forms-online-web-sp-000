require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :new
    end
    # code other routes/actions here
    post '/pirate' do
      
    end

  end
end
