class TripsController < ApplicationController

   def index
     @trips = Trip.all
   end

   def new
     @trip = Trip.new
   end

   def show
    @trip = Trip.find(params[:id])
   end

   def create
    @trip=Trip.create(trip_params)
     redirect_to trip_path(@trip)
   end

   def edit
   end

   def update
     @trip.update(trip_params)
     redirect_to trip_path(@trip)
   end

   def delete
     @trip = Trip.find(params[:id])
     @trip.destroy
     redirect_to trip_path
   end

   private

  
   def trip_params
     params.require(:trip).permit!
   end


end
