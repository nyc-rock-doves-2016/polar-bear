class Game < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  validates :deck, :user, presence: true

  def next_card
    guesses = self.guesses
    deck = self.deck
    cards = guesses.map do |guess|
      guess.card
    end
    remaining_cards_arr = deck.cards - cards
    remaining_cards_arr.sample
  end

  def total_guesses
    self.guesses.length
  end

  def total_correct
    correct = []
    self.guesses.each do | guess |
      if guess.is_correct == true
        correct << guess
      end
    end
    return correct.length
  end
end
