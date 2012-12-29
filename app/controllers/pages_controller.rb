class PagesController < ApplicationController
  def home
    @markets = Market.all
  end

  def show
    @market = Market.where[@current_day => params[:day]]
  end
end
