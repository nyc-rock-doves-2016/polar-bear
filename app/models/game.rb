class Game < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  validates :deck, :user, presence: true

  def next_card
    all = deck.cards.all
    guessed = guesses.all.where(is_correct: true).collect {|g| g.rand }
  end
end
