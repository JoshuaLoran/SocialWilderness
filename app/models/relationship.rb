class Relationship < ApplicationRecord
  belongs_to :followed_user, class_name: "User", foreign_key: :followed_id
  belongs_to :follower_user, class_name: "User", foreign_key: :follower_id
  validates :follower_id, presence: true
  validates :followed_id, presence: true

end
