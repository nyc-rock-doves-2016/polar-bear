class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :games, through: :guesses


  validates :question, :answer, :deck, presence: true
end
