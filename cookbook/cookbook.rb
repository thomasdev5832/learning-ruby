INSERT_RECIPE = 1
VIEW_RECIPES = 2
EXIT = 3

puts "Welcome to the Cookbook"

def menu()
    puts "[#{INSERT_RECIPE}] Register recipe"
    puts "[#{VIEW_RECIPES}] View all recipes"
    puts "[#{EXIT}] Exit"
    print "Choose a option: "
    return gets.to_i
end

def insert_recipe()
    puts "What is the name of the recipe?"
    recipe_name = gets.chomp()
    puts "What is the type of the recipe?"
    recipe_type = gets.chomp()
    # hash
    puts
    puts "Recipe - #{recipe_name} - registered successfully!"
    puts
    return  { name: recipe_name, type: recipe_type }
end

def view_recipes(rec)
    puts "======= Recipes ======="
    # ---- forEach normal ----
    rec.each do |recipe|
        puts "#{recipe[:name]} - #{recipe[:type]}"
    end
    if rec.empty?
        puts "No registered recipe!"
    end
    # --- forEach in a nutshell ---- 
    # puts recipes
    puts "======================="
    puts
end

recipes = []

option = menu()

loop do
    if(option == INSERT_RECIPE)
        recipes << insert_recipe()
    elsif(option == VIEW_RECIPES)
        view_recipes(recipes)
    elsif(option == EXIT)
        break
    else
        puts "Ivalid option"
    end
    option = menu()
end

puts
puts "Thank you for using Cookbook! See you later!"
puts