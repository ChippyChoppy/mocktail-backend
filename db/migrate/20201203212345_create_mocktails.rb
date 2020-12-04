class CreateMocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :mocktails do |t|
      t.string :name
      t.string :imageUrl
      t.string :tasting_notes
      t.string :glassware
      t.string :instruction
      t.string :tag
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end
