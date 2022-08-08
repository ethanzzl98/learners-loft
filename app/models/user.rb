class User < ApplicationRecord
  has_many :lessons
  has_many :bookings
end
