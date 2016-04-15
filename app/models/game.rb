class Game < ActiveRecord::Base
  # Remember to create a migration!
  validates :deck, :user, presence: true
end
