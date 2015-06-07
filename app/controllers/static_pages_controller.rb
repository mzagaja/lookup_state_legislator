require 'open-uri'
class StaticPagesController < ApplicationController
  def lookup
  end

  def contact
    location = params[:location].split(",")
    base_url = 'http://openstates.org/api/v1//legislators/geo/'
    lat = '?lat=' + location[0]
    long = '&long=' + location[1]
    api_key = '&apikey=' + '7df140cf73d0488897c53b2039f035b8'
    full_url = base_url + lat + long + api_key
    @legislator = JSON.parse(open(full_url).read)
    @test = location[0] + "," + location[1]
  end
end
