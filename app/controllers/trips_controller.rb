class TripsController < ApplicationController
  before_action :set_trips, only: [:show, :edit, :update, :destroy]

   def index
     @trips = Trip.all
   end

   def new
     @trip = Trip.new
   end

   def create
     @trip = Review.new(trip_params)
     @trip.user_id = current_user.id
     if @trip.save
       redirect_to destination_path(@trip.destination)
     else
       flash[:errors] = @trip.errors.full_messages
       redirect_to new_trip_path
     end
   end

   def update
     if @trip.update(trip_params)
       redirect_to "/users/#{current_user.id}/profile"
     else
       flash[:errors] = @trip.errors.full_messages
       redirect_to edit_trip_path
     end
   end

   def destroy
     @trip.destroy
     redirect_to "/users/#{current_user.id}/profile"
   end

   private

   def set_trips
    @trip = Trip.find(params[:id])
   end

   def trip_params
     params.require(:trip).permit!
   end

end
