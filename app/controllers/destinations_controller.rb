class DestinationsController < ApplicationController

  def index
    @destinations = Destination.search_by_country(params[:search])
  end

  def show
    @destination = Destination.find(params[:id])
    @revsample1 = @destination.get_sample
    @revsample2 = @destination.get_sample
    @uniq_reviews = @destination.get_uniq_reviews
  end


end
