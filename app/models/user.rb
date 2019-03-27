class User < ApplicationRecord
  has_many :destinations
  has_many :trips, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :followed_users, through: :active_relationships, source: :followed_user
  has_many :follower_users, through: :passive_relationships, source: :follower_user
  validates :email, {presence: true, uniqueness: true}
  validates :name, presence: true

  has_secure_password

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
      # if !user
      #
      # end
    end
  end

  def follow(other)
    active_relationships.create(follower_id: other.id)
  end

  def unfollow(other)
    active_relationships.find_by(follower_id: other.id).destroy
  end

  def following?(other)
    following.include?(other)
  end


 end
