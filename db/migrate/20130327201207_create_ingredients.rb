class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :price
      t.integer :units

      t.timestamps
    end
  end
end
