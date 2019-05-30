# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create([{ username: 'Joe' }])
user2 = User.create([{ username: 'Johnny' }])

poll1 = Poll.create([{ title:  "PIZZA", user_id: 1}])
poll2 = Poll.create([{ title:  "Commute", user_id: 2}])

question1 = Question.create([{ text: "Who wants Pizza?", poll_id: 1}])
question2 = Question.create([{ text: "Who takes the bus?", poll_id: 2}])

answer1 = AnswerChoices.create([{ answer_text: "Yes!!!", question_id: 1 }])
answer2 = AnswerChoices.create([{ answer_text: "YUCKY!", question_id: 1 }])
answer3 = AnswerChoices.create([{ answer_text: "I do", question_id: 2 }])
answer4 = AnswerChoices.create([{ answer_text: "Not me", question_id: 2 }])

response1 = Response.create([{ answerchoice_id: 1, user_id: 1 }])
response2 = Response.create([{ answerchoice_id: 2, user_id: 2 }])
response3 = Response.create([{ answerchoice_id: 3, user_id: 1 }])
response4 = Response.create([{ answerchoice_id: 4, user_id: 2 }])