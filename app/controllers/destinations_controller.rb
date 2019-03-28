class DestinationsController < ApplicationController
  before_action :set_destinations, only: [:show]
  skip_before_action :require_login, only: [:show, :search, :index]

   def index
     @destinations = Destination.all
   end

   def new
     @destination = Destination.new
   end

   def search
     @destination = Destination.search(params[:search])
     if !@destination
       redirect_to destinations_path
     end
   end

   def show
     @review = Review.new
   end

   def create
     @destination=Destination.create(destination_params)
     redirect_to @destination
   end

   def edit
   end

   def update
     @destination.update(destination_params)
     redirect_to @destination
   end

   private

   def set_destinations
     @destination = Destination.find(params[:id])
   end

   def destination_params
     params.require(:destination).permit!
   end

end
