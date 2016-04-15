class Guess < ActiveRecord::Base
  validates :game, :card, :user, :is_correct, presence: true
end
