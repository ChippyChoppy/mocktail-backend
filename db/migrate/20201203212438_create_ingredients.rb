class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :measurement
      t.references :mocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
