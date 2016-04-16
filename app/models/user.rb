class User < ActiveRecord::Base
  has_many :games
  has_many :guesses
  has_many :cards, through: :guesses
  has_many :decks, through: :games


  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

end
