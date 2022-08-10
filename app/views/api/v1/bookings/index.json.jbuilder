json.bookings do
  json.array! @bookings do |booking|
    json.extract! booking, :id, :lesson_id, :user_id
    json.lesson do
      json.partial! 'api/v1/lessons/lesson', lesson: booking.lesson
      # json.extract! booking.lesson, :id, :subject, :title, :start_time, :end_time, :icon_url
    end
  end
end
