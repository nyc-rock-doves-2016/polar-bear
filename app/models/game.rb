class Game < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  validates :deck, :user, presence: true

  def next_card
    guesses = self.guesses
    deck = self.deck
    cards = guesses.each do |guess|
      guess.card
      # binding.pry
    end
    remaining_cards_arr = deck.cards - cards
    # binding.pry
    remaining_cards_arr.sample

    # all = deck.cards.all
    # guessed = guesses.all.where(is_correct: true).collect {|g| g.rand }
  end
end
