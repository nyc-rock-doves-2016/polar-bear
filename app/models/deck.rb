class Deck < ActiveRecord::Base
  has_many :cards
  has_many :games

  validates :name, :description, presence: true
end
