json.extract! lesson, :subject, :title, :description, :icon_url
json.start_time lesson.start_time&.strftime("%e %b %Y, %H:%M")
json.end_time lesson.end_time&.strftime("%H:%M")
