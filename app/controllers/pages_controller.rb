class PagesController < ApplicationController
  def home
    @market = Market.all
  end

  def show

  end
end
