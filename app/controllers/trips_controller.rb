class TripsController < ApplicationController
  before_action :set_trips, only: [:show, :edit, :update, :destroy]
   def index
     @trips = Trip.all
   end

   def new
     @trip = Trip.new
   end

   def show
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
     @trip.destroy
     redirect_to trip_path
   end

   private

   def set_trips
    @trip = Trip.find(params[:id])
   end

   def trip_params
     params.require(:trip).permit!
   end


end
