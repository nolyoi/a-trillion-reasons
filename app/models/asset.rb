class Asset < ActiveRecord::Base

  def self.check
    assets = self.all
    time_now = Time.now.min
    assets.each do |a|
      updated_at = a.updated_at.min
      if time_now >= updated_at + 5 or updated_at == nil
        if a.name == "Bitcoin"
            url = a.api_url
            response = RestClient.get(url)
            api = JSON.parse(response)
            a.price = api["market_data"]["current_price"]["usd"].to_s
            a.circulating_supply = api["market_data"]["circulating_supply"]
            a.total_supply = api["market_data"]["total_supply"]
          elsif a.name == "United States Dollar"

          end
      end
      return "no updates"
    end
  end

end
