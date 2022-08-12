json.lessons do
  json.array! @lessons do |lesson|
    # json.extract! lesson, :id, :subject, :title, :start_time, :end_time, :icon_url
    json.partial! partial: 'api/v1/lessons/lesson', lesson: lesson
  end
end
