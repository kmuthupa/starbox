# Start with clean slate
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Beverage.destroy_all

# Create ingredients
cocoa = Ingredient.create({:name => 'Cocoa', :price => 0.9, :units => 25})
coffee = Ingredient.create({:name => 'Coffee', :price => 0.75, :units => 25})
cream = Ingredient.create({:name => 'Cream', :price => 0.25, :units => 25})
decaf_coffee = Ingredient.create({:name => 'Decaf Coffee', :price => 0.75, :units => 25})
espresso = Ingredient.create({:name => 'Espresso', :price => 1.1, :units => 25})
foamed_milk = Ingredient.create({:name => 'Foamed Milk', :price => 0.35, :units => 25})
steamed_milk = Ingredient.create({:name => 'Steamed Milk', :price => 0.35, :units => 25})
sugar = Ingredient.create({:name => 'Sugar', :price => 0.25, :units => 25})
whipped_cream = Ingredient.create({:name => 'Whipped Cream', :price => 1.0, :units => 25})

# Create recipes
recipe1 = Recipe.create
recipe2 = Recipe.create
recipe3 = Recipe.create
recipe4 = Recipe.create
recipe5 = Recipe.create
recipe6 = Recipe.create

# Create recipe ingredients
recipe_ing1 = RecipeIngredient.create(:units => 3)
recipe_ing1.ingredient = espresso
recipe_ing1.recipe = recipe1
recipe_ing1.save
recipe_ing2 = RecipeIngredient.create(:units => 2)
recipe_ing2.ingredient = espresso
recipe_ing2.recipe = recipe2
recipe_ing2.save
recipe_ing3 = RecipeIngredient.create(:units => 1)
recipe_ing3.ingredient = steamed_milk
recipe_ing3.recipe = recipe2
recipe_ing3.save
recipe_ing4 = RecipeIngredient.create(:units => 1)
recipe_ing4.ingredient = espresso
recipe_ing4.recipe = recipe3
recipe_ing4.save
recipe_ing5 = RecipeIngredient.create(:units => 1)
recipe_ing5.ingredient = cocoa
recipe_ing5.recipe = recipe3
recipe_ing5.save
recipe_ing6 = RecipeIngredient.create(:units => 1)
recipe_ing6.ingredient = steamed_milk
recipe_ing6.recipe = recipe3
recipe_ing6.save
recipe_ing7 = RecipeIngredient.create(:units => 1)
recipe_ing7.ingredient = whipped_cream
recipe_ing7.recipe = recipe3
recipe_ing7.save
recipe_ing8 = RecipeIngredient.create(:units => 2)
recipe_ing8.ingredient = espresso
recipe_ing8.recipe = recipe4
recipe_ing8.save
recipe_ing9 = RecipeIngredient.create(:units => 1)
recipe_ing9.ingredient = steamed_milk
recipe_ing9.recipe = recipe4
recipe_ing9.save
recipe_ing10 = RecipeIngredient.create(:units => 1)
recipe_ing10.ingredient = foamed_milk
recipe_ing10.recipe = recipe4
recipe_ing10.save
recipe_ing11 = RecipeIngredient.create(:units => 3)
recipe_ing11.ingredient = coffee
recipe_ing11.recipe = recipe5
recipe_ing11.save
recipe_ing12 = RecipeIngredient.create(:units => 1)
recipe_ing12.ingredient = sugar
recipe_ing12.recipe = recipe5
recipe_ing12.save
recipe_ing13 = RecipeIngredient.create(:units => 1)
recipe_ing13.ingredient = cream
recipe_ing13.recipe = recipe5
recipe_ing13.save
recipe_ing14 = RecipeIngredient.create(:units => 3)
recipe_ing14.ingredient = decaf_coffee
recipe_ing14.recipe = recipe6
recipe_ing14.save
recipe_ing15 = RecipeIngredient.create(:units => 1)
recipe_ing15.ingredient = sugar
recipe_ing15.recipe = recipe6
recipe_ing15.save
recipe_ing16 = RecipeIngredient.create(:units => 1)
recipe_ing16.ingredient = cream
recipe_ing16.recipe = recipe6
recipe_ing16.save

# Create beverages
cafe_americano = Beverage.create({:name => 'Cafe Americano'})
cafe_americano.recipe = recipe1
cafe_americano.save
cafe_latte = Beverage.create({:name => 'Cafe Latte'})
cafe_latte.recipe = recipe2
cafe_latte.save
cafe_mocha = Beverage.create({:name => 'Cafe Mocha'})
cafe_mocha.recipe = recipe3
cafe_mocha.save
cappuccino = Beverage.create({:name => 'Cappuccino'})
cappuccino.recipe = recipe4
cappuccino.save
coffee_beverage = Beverage.create({:name => 'Coffee'})
coffee_beverage.recipe = recipe5
coffee_beverage.save
decaf_coffee_beverage = Beverage.create({:name => 'Decaf Coffee'})
decaf_coffee_beverage.recipe = recipe6
decaf_coffee_beverage.save
