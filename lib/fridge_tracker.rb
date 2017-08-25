require_relative '../config/environment'
require_relative '../app/models/fridge'

puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a Fridge"
puts "C) Delete a Fridge"
puts "D) View all food in a fridge"
puts "E) Add a food item to a fridge"
puts "F) Eat a food item from a fridge (delete it)"
# puts "G) View all drink items in a specific fridge"
# puts "H) Add a drink item to a fridge"
# puts "I) Consume PART of a drink from a fridge (update its size in ounces)"
# puts "J) Consume ALL of a drink from a fridge (delete it)"
option = gets.chomp
puts "You selected #{option}"

# Option A
if option.upcase == 'A'
    Fridge.all.map do |fridge|
        puts "Fridge ID = " + fridge.id.to_s
        puts fridge.location.to_s
        puts fridge.brand.to_s
        puts fridge.size.to_s
        puts "_ _ _ _ _ _ _"
    end
end

# Option B
if option.upcase == 'B'
    puts "Where are you putting your fridge?"
    Fridge_location = gets.chomp
    puts "What brand is your fridge?"
    Fridge_brand = gets.chomp
    puts "How big is your fridge? (Cubic feet)"
    Fridge_size = gets.chomp
    Fridge.create do |fridge|
        fridge.location = Fridge_location
        fridge.brand = Fridge_brand
        fridge.size = Fridge_size
    end
end

# Option C
if option.upcase == 'C'
    puts "Select Fridge ID"
    Fridge_id = gets.chomp
    puts "Delete fridge " + Fridge_id + "? Y/N"
    if gets.chomp == 'Y'
        Fridge.find_by_id(Fridge_id).destroy
    end
end

# Option D
if option.upcase == 'D'
    puts "Showing all food:"
    Food.all.map do |food|
        puts "Name: " + food.name.to_s
        puts "Weight: " + food.weight.to_s + " lbs"
        if food.is_vegan == true
            puts "Vegan: Yes"
        else puts "Vegan: No"
        end
        # puts "Added to the fridge at: " + food.timestamps.to_s
        puts "_ _ _ _ _ _"
    end
end

# Option E
if option.upcase == 'E'
    puts "What fridge are you putting food into?"
    Food_fridge_id = gets.chomp
    puts "What are you putting into the fridge?"
    Food_name = gets.chomp
    puts "How much does the food weigh? (lbs)"
    Food_weight = gets.chomp
    puts "Is it vegan? Y/N"
    if gets.chomp == "Y"
        Food_is_vegan = true
    else Food_is_vegan = false
    end
    Food.create do |food|
        food.fridge_id = Food_fridge_id
        food.name = Food_name
        food.weight = Food_weight
        food.is_vegan = Food_is_vegan
    end
end

#Option F
if option.upcase == 'F'
    puts "What do you want to take out of the fridge?"
    Food_name = gets.chomp
    puts "Is that what you want to eat? Y/N"
    if gets.chomp == 'Y'
        Food.find_by_name(Food_name).destroy
    end
end

