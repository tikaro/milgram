class HomeController < ApplicationController

  def index
  end

  def send_shock
    shock_strength = 255
    @shock_url = "http://pavlok.herokuapp.com/api/#{ ENV['PAVLOK_OBJECT_ID'] }/#{ ENV['PAVLOK_SHOCK_METHOD'] }/#{ shock_strength}"
    
    @response = HTTParty.get( @shock_url )
  end
end
