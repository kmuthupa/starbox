class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :units
      t.references :recipe
      t.references :ingredient
      
      t.timestamps
    end
  end
end
