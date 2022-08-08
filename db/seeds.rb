# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create([{ first_name: "Jerry", last_name: "Tong", bio: "Best History Teacher in Shanghai" },
{ first_name: "Ethan", last_name: "Zhang", bio: "Best Back End programmer in history" },
{ first_name: "Stuart", last_name: "Schuman", bio: "Best Academic English Teacher in Shanghai" },
{ first_name: "Illarion", last_name: "Kopeika", bio: "Best History Teacher in Shanghai" }])

lesson = Lesson.create([{ subject: "History", title: "1942", description: "Best History class in Shanghai", start_time: DateTime.new(2022,8,30,8), end_time: DateTime.new(2022,8,30,9), user_id: 1},
{ subject: "English", title: "English present simple tense", description: "Best Back End class in history", start_time: DateTime.new(2022,9,30,8), end_time: DateTime.new(2022,9,30,9), user_id: 2},
{ subject: "Science", title: "Physics", description: "Best Academic English class in Shanghai", start_time: DateTime.new(2021,3,30,8), end_time: DateTime.new(2021,3,30,9), user_id: 3},
{ subject: "Math", title: "Arthimetic", description: "Best Math class in Shanghai", start_time: DateTime.new(2022,4,30,8), end_time: DateTime.new(2022,4,30,9), user_id: 4}])
