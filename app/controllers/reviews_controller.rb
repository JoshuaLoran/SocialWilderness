class ReviewsController < ApplicationController
  before_action :set_reviews, only: [:edit, :update, :destroy, :show]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to destination_path(@review.destination)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path
    end
  end

  def update
    if @review.update(review_params)
      redirect_to "/users/#{current_user.id}/profile"
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to edit_review_path
    end
  end

  def destroy
    @review.destroy
    redirect_to "/users/#{current_user.id}/profile"
  end

  private

  def review_params
    params.require(:review).permit!
  end

  def set_reviews
    @review = Review.find(params[:id])
  end
end
