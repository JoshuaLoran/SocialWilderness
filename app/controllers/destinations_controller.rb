class DestinationsController < ApplicationController
  before_action :set_destinations, only: [:edit, :update, :destroy, :show]
  skip_before_action :require_login, only: [:show, :search, :index]

   def index
     @destinations = Destination.all
   end

   def new
     @destination = Destination.new
   end

   def search
     @destination = Destination.search(params[:search])
   end

   def show
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

   def delete
     @destination.destroy
     redirect_to destinations_path
   end

   private

   def set_destinations
     @destination = Destination.find(params[:id])
   end

   def destination_params
     params.require(:destination).permit!
   end

end
