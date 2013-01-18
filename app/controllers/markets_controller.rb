require 'json'
require 'open-uri'
 
class MarketsController < ApplicationController
  
  def index
    @markets = Market.all
  end
 
  def show
    
    user_zipcode = params[:search]
    zips = Market.pluck(:zipcode).uniq.join('|')
 
    json_response = open(URI.encode("http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{user_zipcode}&destinations=#{zips}&language=en&sensor=false")).read
    markets = JSON.parse(json_response)
 
    paired_markets = markets['destination_addresses'].zip(markets['rows'].first['elements'])
    
    close_markets = paired_markets.select do |destination, data|
      data['distance']['value'] < 2500
    end

    @close_markets = close_markets
 
    @zipcodes = close_markets.map do |destination, data|
                zip_code = destination[/(\d+)/]
    end

    if Market.where(:zipcode => @zipcodes) == nil
      flash[:notice] = "Sorry there are no markets 1.5 miles away from you"
      return 
      close_markets = paired_markets.select do |destination, data|
        data['distance']['value'] < 4000
      end
      @zipcodes = close_markets.map do |destination, data|
          zip_code = destination[/(\d+)/]
      end
      @markets_farther = Market.where(:zipcode => @zipcodes)
    else 
      @markets = Market.where(:zipcode => @zipcodes)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market }
    end 
  end
 
end