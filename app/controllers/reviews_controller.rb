class ReviewsController < ApplicationController
  before_action :set_expedition, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.expedition = @expedition
    if @review.save
      redirect_to expedition_path(@expedition)
    else
      render "expeditions/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @expedition = @review.expedition
    @review.destroy
    redirect_to expedition_path(@expedition)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_expedition
    @expedition = Expedition.find(params[:expedition_id])
  end
end
