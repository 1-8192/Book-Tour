class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @revsample1 = @destination.get_sample
    @revsample2 = @destination.get_sample
    @uniq_reviews = @destination.get_uniq_reviews
  end



end
