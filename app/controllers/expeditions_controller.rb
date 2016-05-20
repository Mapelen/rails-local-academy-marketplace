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
    @current_participation = Participation.find_by(user: current_user, expedition: @expedition)
    @review = Review.new
  end

  def new
    @expedition = Expedition.new
    @destinations = Destination.all
  end

  def create
    @expedition = @destination.expeditions.build(expedition_params)
    @expedition.user_id = current_user.id
    if @expedition.save
      redirect_to expedition_path(@expedition)
    else
      render "expeditions/new"
    end
  end

  def edit

  end

  def update
    if @expedition.update(expedition_params)
      redirect_to expedition_path(@expedition)
    else
      render :edit
    end
  end

  def destroy
    find_expedition
    @expedition.destroy
    redirect_to home_path
  end

  private

  def expedition_params
    params.require(:expedition).permit(:title, :description, :theme, :capacity, :starts_on, :ends_on, :photo, :photo_cache, :user_id)
  end

  def find_expedition
    @expedition = Expedition.find(params[:id])
  end

  def find_destination
    @destination = Destination.find(params[:expedition][:destination])
  end
end
