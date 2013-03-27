class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.references :recipe

      t.timestamps
    end
  end
end
