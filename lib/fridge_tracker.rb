require_relative '../config/environment'
require_relative '../app/models/fridge'

puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a Fridge"
# puts "C) Delete a Fridge"
# puts "D) View all food in a fridge"
# puts "E) Add a food item to a fridge"
# puts "F) Eat a food item from a fridge (delete it)"
# puts "G) View all drink items in a specific fridge"
# puts "H) Add a drink item to a fridge"
# puts "I) Consume PART of a drink from a fridge (update its size in ounces)"
# puts "J) Consume ALL of a drink from a fridge (delete it)"
option = gets.chomp
puts "You selected #{option}"

# Option A
if option.upcase == 'A'
    puts Fridge.all.to_s
    Fridge.all.map do |fridge|
        puts "Fridge ID = " + fridge.id.to_s
        puts fridge.location.to_s
        puts fridge.brand.to_s
        puts fridge.size.to_s
        puts "_ _ _ _ _ _ _"
    end
end

# Option B


