class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show]

  def index
    @destinations = Destination.all
  end

  def show
  end

  private
  def set_destination
    id = params[:id] || params[:destination_id]
    @destination = Destination.find(id)
  end
end
