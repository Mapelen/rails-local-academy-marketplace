class ExpeditionsController < ApplicationController
  before_action :find_expedition, only: [:show, :edit, :update, :destroy]
  before_action :find_destination, only: [:create]

  def index
    @expeditions = Expedition.all
  end

  def show
    @destination = @expedition.destination
    @destinations = Destination.all
    @participation = Participation.new
  end

  def new
    @expedition = Expedition.new
    @destinations = Destination.all
  end

  def create
    @expedition = @destination.expeditions.build(expedition_params)
    if @expedition.save
      redirect_to expedition_path(@expedition)
    else
      render "expeditions/new"
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @expedition.destroy
    redirect_to expeditions_path
  end

  private

  def expedition_params
    params.require(:expedition).permit(:title, :description, :capacity, :starts_on, :ends_on, :photo, :photo_cache)
  end

  def find_expedition
    @expedition = Expedition.find(params[:id])
  end

  def find_destination
    @destination = Destination.find(params[:expedition][:destination])
  end
end
