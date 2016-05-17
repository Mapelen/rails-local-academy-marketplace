class ExpeditionsController < ApplicationController
  before_action :set_params, only: [:create, :edit, :update]

  def index
    @expeditions = Expedition.all
  end

  def show
    @expedition = find_expedition
  end

  def new
    @expedition = Expedition.new
  end

  def create
    @expedition = Expedition.new(set_expedition)
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
    @expedition = find_expedition
    @expedition.destroy
    redirect_to expeditions_path
  end

  private

  def set_params
    params.require(:expedition).permit(:title, :photo, :photo_cache)
  end

  def find_expedition
    @expedition = Expedition.find(params[:id])
  end
end
