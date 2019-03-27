class ReviewsController < ApplicationController

 def index
   @reviews = Review.all
 end

 def new
   @review = Review.new

 end

 def show
  @review = Review.find(params[:id])
 end

 def create
   @review = Review.new(review_params)
   @review.user_id = current_user.id
   @review.save
   redirect_to destination_path(@review.destination)
 end

 def edit
 end

 def update
   @review.update(review_params)
   redirect_to review_path(@review)
 end

 def delete
   @review = Review.find(params[:id])
   @review.destroy
   redirect_to review_path
 end

  private

  def review_params
    params.require(:review).permit!
  end
end
