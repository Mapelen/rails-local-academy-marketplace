class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def home
    @destinations = Destination.all
    @expeditions = Expedition.all
  end

  def dashboard
    @expeditions = Expedition.all
    @destinations = Destination.all
    @participations = Participation.all
    @current_user_participations = current_user.participations
    @current_user_expeditions = current_user.expeditions
    @current_organizing_expeditions = Expedition.where(user_id: current_user.id)
  end

end
