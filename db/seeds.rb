Fridge.destroy_all

frosty = Fridge.create(location: "Kitchen", brand: "LG", size: 18, has_food: true, has_drink: true)

# Frosty's Food list
Food.create(fridge_id: frosty.id, name: "Pineapple", weight: 1, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Steak", weight: 2, is_vegan: false)
Food.create(fridge_id: frosty.id, name: "Peanut Butter", weight: 5, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Bread", weight: 1, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Jelly", weight: 1, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Bacon", weight: 1, is_vegan: false)
Food.create(fridge_id: frosty.id, name: "Ground Turkey", weight: 2, is_vegan: false)
Food.create(fridge_id: frosty.id, name: "Strawberries", weight: 1, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Almond-based Ricotta Cheese", weight: 2, is_vegan: true)
Food.create(fridge_id: frosty.id, name: "Asparagus", weight: 1, is_vegan: true)

# Frosty's Drink list
Drink.create(fridge_id: frosty.id, name: "Beer", size: 16, is_alcoholic: true)
Drink.create(fridge_id: frosty.id, name: "La Croix", size: 8, is_alcoholic: false)
Drink.create(fridge_id: frosty.id, name: "Coke", size: 24, is_alcoholic: false)

tank = Fridge.create(location: "Garage", brand: "Kenmore", size: 16, has_food: true, has_drink: true)

# tank's Food list
Food.create(fridge_id: tank.id, name: "Oranges", weight: 1, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Steak", weight: 2, is_vegan: false)
Food.create(fridge_id: tank.id, name: "Pizza", weight: 5, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Bread", weight: 1, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Jelly", weight: 1, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Bacon", weight: 1, is_vegan: false)
Food.create(fridge_id: tank.id, name: "Guacamole", weight: 2, is_vegan: false)
Food.create(fridge_id: tank.id, name: "Strawberries", weight: 1, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Almond-based Ricotta Cheese", weight: 2, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Asparagus", weight: 1, is_vegan: true)

# tank's Drink list
Drink.create(fridge_id: tank.id, name: "Beer", size: 16, is_alcoholic: true)
Drink.create(fridge_id: tank.id, name: "Wine Cooler", size: 8, is_alcoholic: false)
Drink.create(fridge_id: tank.id, name: "Coke", size: 24, is_alcoholic: false)