class User < ApplicationRecord
  has_many :destinations
  has_many :trips
  has_many :reviews

  def new_user_trip(title, destination_id)
    @trip = Trip.new
    @trip.title = title
    @destination = Destination.find(destination_id)
    @trip.user_id = self.id
    @trip.destination = @destination
    @trip.save
    self.trip = @trip
  end

  def self.search(search)
    if search
      user = User.find_by(email: search)
    end
  end

 end
