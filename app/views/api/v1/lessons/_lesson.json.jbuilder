json.extract! lesson, :subject, :title, :description, :icon_url, :id
json.start_date lesson.start_date&.strftime("%e %b %Y")
json.start_time lesson.start_time&.strftime("%H:%M")
json.end_time lesson.end_time&.strftime("%H:%M")
