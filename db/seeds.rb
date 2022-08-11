# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  [
    {
      first_name: "Jerry",
      last_name: "Tong",
      bio: "Best History Teacher in Shanghai"
    },
    {
      first_name: "Ethan",
      last_name: "Zhang",
      bio: "Best Back End programmer in history"
    },
    {
      first_name: "Stuart",
      last_name: "Schuman",
      bio: "Best Academic English Teacher in Shanghai"
    },
    {
      first_name: "Illarion",
      last_name: "Kopeika",
      bio: "Best History Teacher in Shanghai"
    }
  ]
)

Lesson.create(
  [
    {
      subject: "History",
      title: "1942",
      description: "Best History class in Shanghai.",
      start_time: DateTime.new(2022,8,9,14,0,0),
      end_time: DateTime.new(2022,8,9,15,0,0),
      start_date: DateTime.new(2022,8,9,15,0,0),
      icon_url: 'https://res.cloudinary.com/jerrytongshanghailewagon/image/upload/v1660039157/Learners%27%20Loft/history_hmm2sx.png',
      user_id: 1
    },
    {
      subject: "English",
      title: "English present simple tense",
      description: "Best English class. You will learn about the wonderful tenses of the English Language",
      start_time: DateTime.new(2022, 8, 11, 14, 0, 0),
      end_time: DateTime.new(2022, 11, 9, 15, 0, 0),
      start_date: DateTime.new(2022, 8, 11, 14, 0, 0),
      icon_url: 'https://res.cloudinary.com/jerrytongshanghailewagon/image/upload/v1660039158/Learners%27%20Loft/languages_fh9zqs.png',
      user_id: 2
    },
    {
      subject: "Science",
      title: "Physics",
      description: "Best Academic English class in Shanghai",
      start_time: DateTime.new(2022,8,11,12,0,0),
      end_time: DateTime.new(2022,8,11,13,0,0),
      start_date: DateTime.new(2022,8,11,14,0,0),
      icon_url: 'https://res.cloudinary.com/jerrytongshanghailewagon/image/upload/v1660039156/Learners%27%20Loft/biology_f0omda.png',
      user_id: 3
    },
    {
      subject: "Math",
      title: "Arthimetic",
      description: "Best Math class in Shanghai",
      start_time: DateTime.new(2022,8,12,14,0,0),
      end_time: DateTime.new(2022,8,12,15,0,0),
      start_date: DateTime.new(2022,8,12,16,0,0),
      icon_url: 'https://res.cloudinary.com/jerrytongshanghailewagon/image/upload/v1660039157/Learners%27%20Loft/math_ctcvn5.png',
      user_id: 4
    }
  ]
)
