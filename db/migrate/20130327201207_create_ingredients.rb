class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :price, :precision => 10, :scale => 4
      t.integer :units

      t.timestamps
    end
  end
end
