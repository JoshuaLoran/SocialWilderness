class User < ApplicationRecord
  has_many :destinations
  has_many :trips
  has_many :reviews, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship", foreign_key :"follower_id", dependent: :destroy
  has_many :following, through :active_relationships, source: :followed

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end
  
end
