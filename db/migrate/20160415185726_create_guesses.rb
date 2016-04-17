class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :game, null: false
      t.references :card, null: false
      t.references :user
      t.boolean :is_correct

      t.timestamps null: false
    end
  end
end
