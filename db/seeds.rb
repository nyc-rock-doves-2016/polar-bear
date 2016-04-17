DECK_COUNT = 3
CARD_COUNT = 5

DECK_COUNT.times do
  Deck.create(
    name: Faker::Hipster.sentence,
    description: Faker::Hipster.paragraph
    )
end

n = 1

CARD_COUNT.times do
  Card.create(
    question: Faker::Hacker.say_something_smart,
    answer: "a",
    deck_id: n
  )
end

CARD_COUNT.times do
  Card.create(
    question: Faker::Hacker.say_something_smart,
    answer: "a",
    deck_id: n + 1
  )
end

CARD_COUNT.times do
  Card.create(
    question: Faker::Hacker.say_something_smart,
    answer: "a",
    deck_id: n + 2
  )
end


