class Destination < ApplicationRecord
  has_many :trips
  has_many :reviews
  has_many :users
  validates :name, presence: true
  validates :booking_url, presence: true
  validates :location_url, presence: true
  validates :description, length: { in: 200..2000}
end
