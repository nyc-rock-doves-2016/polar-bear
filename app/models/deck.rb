class Deck < ActiveRecord::Base
  has_many :cards
  validates :name, :description, presence: true
end
