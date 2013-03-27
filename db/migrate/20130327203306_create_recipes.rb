class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :beverage
      
      t.timestamps
    end
  end
end
