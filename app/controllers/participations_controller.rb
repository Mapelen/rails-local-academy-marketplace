class ParticipationsController < ApplicationController
  before_action :find_expedition, only: [:new, :create, :declination]

  def new
    @participation = Participation.new
  end

  def create
    @participations = Participation.all
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to expedition_path(@expedition)
    else
      render "expeditions/new"
    end
  end

  def acceptation
    @participation = Participation.find(params[:id].to_i)
    @participation.update(accepted: true)
    respond_to do |format|
      format.js
    end
    # ou .save avec une réaffctement de .accepted
  end

  def declination
    @participation = Participation.find(params[:id].to_i)
    @participation.update(accepted: false)
    respond_to do |format|
      format.js
    end
  end

  def show
    @participations = Participation.all
    @expeditions = Expedition.all
    @participation = Participation.find_by(user: user, expedition: @current_expedition)
  end

  def destroy
    @participation = Participation.find(params[:id])
    @expedition = @participation.expedition
    @participation.destroy
    redirect_to expedition_path(@expedition)
  end

  private

  def participation_params
    params.require(:participation).permit(:is_company, :expedition_id, :user_id)
  end

  def find_expedition
    @expedition = Expedition.find(params[:expedition_id])
  end
end
