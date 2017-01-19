class User < ApplicationRecord
  has_many :user_songs
  has_many :songs, through: :user_songs
  has_secure_password
  validates :name, presence: true

end
