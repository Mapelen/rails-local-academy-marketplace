class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @destinations = Destination.all
    @expeditions = Expedition.all

  end
end
