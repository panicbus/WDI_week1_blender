# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!
# require "rainbow"


smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# # chars = smoothie_ingredients.keys.join('').split(' ').join('').split('').shuffle
# # p chars


def blend(smoothie_ingredients)
  ingredients = smoothie_ingredients.keys
  ingreds = ingredients.join('')
  ings = ingreds.split(' ')
  ing = ings.join('')
  i = ing.split('')
  mixed = i.shuffle
  mixed.join
end

puts `clear`
puts "Here's a list of our ingredients."
sleep(1)
puts smoothie_ingredients.keys
sleep(1)
puts "The question is... will they blend?"
puts "Let's see..."
puts
sleep(1)
puts blend(smoothie_ingredients)
puts
sleep(1)
puts "Yep. Looks like it."
puts


# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the smoothie array



class Blender

  def initialize(fruits, state = false)
    @state = state
    @fruits = fruits
  end

def activate
  @state = true
end

def blend(fruits)
  puts `clear`
  puts "That'll be $12. Do you have that kind of money?"
  money = gets.chomp.downcase
  if money == "yes"
    activate()
    smoothy = fruits.join('')
    stirred_smoothy = smoothy.split('').shuffle!
    puts`clear`
    puts 'Great! Just a second...'
    sleep(2)
    puts
    puts 'whirrrrrr....'
    puts
    sleep(2)
    puts 'Here you go. Enjoy!'
    sleep(0.5)
    puts
    puts stirred_smoothy.join('')
  else
      puts
      puts "No smoothie for you!"
      puts
  end
end
end

  puts `clear`
  puts "**Welcome to Nico's Smoothie Palace**"
  puts
  puts "What fruits would you like in your smoothie?"
  fruits = gets.chomp.split(' ')

my_blender = Blender.new(@fruits)
my_blender.blend(fruits)
