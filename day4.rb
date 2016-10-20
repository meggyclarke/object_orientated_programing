class Cats

  attr_accessor :name
  attr_accessor :perferred_food
  attr_accessor :meal_time



  def initialize(name, perferred_food, meal_time)
    @name = name
    @perferred_food = perferred_food
    @meal_time = meal_time

  end



    def meow
      puts "Meow, I am #{name} Kitty.
      I will only tolerate #{perferred_food} at #{eats_at}."

    end

    def eats_at
      if meal_time <= 11
        return "#{meal_time} am"
      else
        return"#{meal_time} pm"
      end
    end
end

sprinkles = Cats.new("sprinkles", "kitty begood", 16)
mittens = Cats.new("mittens", "fancy feast", 11)

puts sprinkles.meow, mittens.meow
