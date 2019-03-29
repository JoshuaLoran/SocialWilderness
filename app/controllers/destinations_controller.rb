class DestinationsController < ApplicationController
  before_action :set_destinations, only: [:show]
  skip_before_action :require_login, only: [:show, :search, :index]

  def index
    @destinations = Destination.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
  end

  def search
    @destination = Destination.search(params[:search])
  end

  def show
    @review = Review.new
  end

   private

  def set_destinations
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit!
  end

end
