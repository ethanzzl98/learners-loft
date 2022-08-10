json.lessons do
  json.array! @lessons do |lesson|
    json.extract! lesson, :id, :subject, :title, :start_time, :end_time, :icon_url
  end
end
