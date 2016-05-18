class ParticipationsController < ApplicationController

  def new
    @participation = Participation.new

  end


  def create
    @participation = Participation.new(participation_params)
    if @participation.save
      redirect_to expedition_path(find_expedition)
    else
      render "expeditions/new"
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:is_company, :expedition_id, :user_id)
  end

  def find_expedition
  @expedition = Expedition.find(@participation.expedition_id)
  end

end
