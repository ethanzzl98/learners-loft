json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :lesson_id, :user_id
  end
end
