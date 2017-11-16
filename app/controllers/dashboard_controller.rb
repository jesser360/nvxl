class DashboardController < ApplicationController
  require 'httparty'
  include HTTParty

  def index
    @dashboard = Dashboard.all.order('value')
    @response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?zip=#{94536}&cnt=8&APPID=56816b6400cf26a5068b34d20251372f")
    @chicago_response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?zip=#{60007}&cnt=8&APPID=56816b6400cf26a5068b34d20251372f")
    @texas_response = HTTParty.get("http://api.openweathermap.org/data/2.5/forecast/daily?zip=#{73301}&cnt=8&APPID=56816b6400cf26a5068b34d20251372f")
    $i = 0
    @day = {}
    @night = {}
    @c_day = {}
    @c_night = {}
    @t_day = {}
    @t_night = {}
    7.times do
      $i +=1
      @day_k = @response['list'][$i]['temp']['day']
      @day[$i] = ((1.8*(@day_k-273))+32).floor
      @night_k = @response['list'][$i]['temp']['night']
      @night[$i] = ((1.8*(@night_k-273))+32).floor

      @c_day_k = @chicago_response['list'][$i]['temp']['day']
      @c_day[$i] = ((1.8*(@c_day_k-273))+32).floor
      @c_night_k = @chicago_response['list'][$i]['temp']['night']
      @c_night[$i] = ((1.8*(@c_night_k-273))+32).floor

      @t_day_k = @texas_response['list'][$i]['temp']['day']
      @t_day[$i] = ((1.8*(@t_day_k-273))+32).floor
      @t_night_k = @texas_response['list'][$i]['temp']['night']
      @t_night[$i] = ((1.8*(@t_night_k-273))+32).floor
    end
  end

  def update
    @dashboard = Dashboard.find_by_id(params[:id])
    @dashboard.value = params[:value]
    @dashboard.save
  end
end
