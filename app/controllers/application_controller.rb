require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    Asset.check
    @btc = Asset.find(id=1)
    @usd = Asset.find(id=2)
    slim :welcome
  end

  helpers do
    def add_commas(input)
      input.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")
    end
  
    def to_currency(input)
      input.round(2).to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")
    end
  end

end
