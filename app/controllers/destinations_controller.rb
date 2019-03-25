class DestinationsController < ApplicationController

   def index
     @destinations = Destination.all
   end

   def new
     @destination = Destination.new
   end

   def show
    @destination = Destination.find(params[:id])
   end

   def create
    @destination=Destination.create(destination_params)
     redirect_to destination_path(@destination)
   end

   def edit
   end

   def update
     @destination.update(destination_params)
     redirect_to destination_path(@destination)
   end

   def delete
     @destination = Destination.find(params[:id])
     @destination.destroy
     redirect_to destination_path
   end

   private
  

   def destination_params
     params.require(:destination).permit!
   end


end
