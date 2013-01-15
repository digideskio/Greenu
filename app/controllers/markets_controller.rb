require 'json'
require 'open-uri'

class MarketsController < ApplicationController
  
  def index
  	@markets = Market.all
  end

  def show
    # @markets = Market.search(params[:search])
  	
    if((params["zip"] == nil) || (params["zip"] == "00000") || (params["zip"].length != 5) || (params["zip"].match(/\D/) != nil))
        flash[:notice] = "Invalid Zipcode"
        redirect_to root_path
        return
    end

    user_zip = params[:zip]
    zips = Market.pluck(:zipcode).uniq.join('|')

    json_response = open(URI.encode("http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{user_zip}&destinations=#{zips}&language=en&sensor=false")).read
    markets = JSON.parse(json_response)

    paired_markets = markets['destination_addresses'].zip(markets['rows'].first['elements'])
    close_markets = paired_markets.select do |destination, data|
      data['distance']['value'] < 2500
    end

    close_markets.map do |destination, data|
      zip_code = destination[/(\d+)/]
      distance = data['distance']['text']
      [zip_code, distance]
    end

  	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market }
    end 
  end

  def create
  end

  def edit
  	@market = Market.find(params[:id])

  	respond_to do |format|
      if @market.update_attributes(params[:market])
        format.html { redirect_to @market }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  def update 
  	@market = Market.find(params[:id])

    respond_to do |format|
      if @market.update_attributes(params[:market])
        format.html { redirect_to @market }
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end 
  end


  def new
  	@market = Market.new

  	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market }
    end
  end

  def destroy
 	@market = Market.find(params[:id])
    @market.destroy

    respond_to do |format|
      format.html { redirect_to markets_url }
      format.json { head :no_content }
  	end
  end

end

