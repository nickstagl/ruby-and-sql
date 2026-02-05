# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
favorite_food = "tacos"
second_fav_food = "sushi"


puts favorite_food.methods 
puts second_fav_food.class

# String Methods

#defines class
class Dog
  def speak
        puts "woof!"
  end
end

#new instance of class
fido = Dog.new
puts fido.speak

hank = Dog.new
puts hank.speak