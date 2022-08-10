class User < ApplicationRecord
  has_many :lessons
  has_many :bookings
  #has_many :booked_lessons, through: :bookings, source: :lesson
end
