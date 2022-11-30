class ApisController < ApplicationController
  def map2coord_form
    render({ :template => "api_html/map2coord_form.html.erb" })
  end

  def map2coord
    @user_street_address = params.fetch("user_street_address")
    @url = "https://maps.googleapis.com/maps/api/geocode/json?address=5807+S+Woodlawn+Ave&key=" + ENV.fetch("GMAPS_KEY")
    raw_data = open(@url).read
    parsed_data = JSON.parse(raw_data)
    results_array = parsed_data.fetch("results")
    first_result = results_array.at(0)
    geometry_hash = first_result.fetch("geometry")
    location_hash = geometry_hash.fetch("location")
    @latitude = location_hash.fetch("lat")
    @longitude = location_hash.fetch("lng")

    render({ :template => "api_html/map2coord.html.erb" })
  end
end
