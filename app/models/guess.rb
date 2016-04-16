class Guess < ActiveRecord::Base
  belongs_to :game
  belongs_to :card
  belongs_to :user

  validates :game, :card, :user, :is_correct, presence: true

  # def is_correct?(x)
  #   self.guess.card ==
  # end
end
