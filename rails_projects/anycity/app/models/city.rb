class City < ActiveRecord::Base
  attr_accessible :zip_code, :name
  
  def fetch_name
    url = "http://ws.geonames.org/postalCodeLookupJSON?postalcode=#{zip_code}&country=US"
    json = Net::HTTP.get_response(URI.parse(url)).body
    self.name = JSON.parse(json)["postalcodes"].first["placeName"]
  end
end
