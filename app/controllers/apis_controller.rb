class ApisController < ApplicationController
  def map2coord_form
    render({ :template => "api_html/map2coord_form.html.erb"})
  end
  def map2coord
    @user_street_address = params.fetch("user_street_address")
    render({ :template => "api_html/map2coord.html.erb"})
  end
end
