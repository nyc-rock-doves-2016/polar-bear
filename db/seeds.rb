# DECK_COUNT = 3
# CARD_COUNT = 5

# DECK_COUNT.times do
#   Deck.create(
#     name: Faker::Hipster.sentence,
#     description: Faker::Hipster.paragraph
#     )
# end

# n = 1

# CARD_COUNT.times do
#   Card.create(
#     question: Faker::Hacker.say_something_smart,
#     answer: "a",
#     deck_id: n
#   )
# end

# CARD_COUNT.times do
#   Card.create(
#     question: Faker::Hacker.say_something_smart,
#     answer: "a",
#     deck_id: n + 1
#   )
# end

# CARD_COUNT.times do
#   Card.create(
#     question: Faker::Hacker.say_something_smart,
#     answer: "a",
#     deck_id: n + 2
#   )
# end


User.create!(
  username: "default",
  password:"default"
  )

Deck.create!(
  name: "MUSIC",
  description:"Test your music knowledge"
  )



Card.create!(
  question: "What is Michael Jackson's first name?",
  answer: "Michael",
  deck_id: 1
  )
Card.create!(
  question: "What year was Taylor Swift born?",
  answer: "1989",
  deck_id: 1
  )

Card.create!(
  question: "How many number one albums did The Beatles have?",
  answer: "17",
  deck_id: 1
  )

Card.create!(
  question: "What instrument does guitarist Slash play?",
  answer: "guitar",
  deck_id: 1
  )


