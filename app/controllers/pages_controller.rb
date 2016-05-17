class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @destinations = Destination.all
  end
end
