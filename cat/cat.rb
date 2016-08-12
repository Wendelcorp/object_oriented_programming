class Cat

  def initialize(name, preferred_food, meal_time, servings, medication)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
    @servings = servings
    @medication = medication
  end

  def eats_at
    if @meal_time.to_i < 12
      return "#{@meal_time}:00 AM"
    else
      return "#{@meal_time.to_i - 12}:00 PM"
    end
  end

  def medication
    if @medication == "yes"
      return "do take"
    else
      return "don't take"
    end
  end

  def serving_plural
    if @servings.to_i < 2
      return "serving"
    else
      return "servings"
    end
  end

  def meow
    return "I am #{@name} and I eat #{@servings} #{serving_plural} of #{@preferred_food} at #{eats_at}. I #{medication} medication."
  end

end

cat1 = Cat.new("Nikki", "tuna", "8", "1", "yes")
cat2 = Cat.new("Bean", "kibble", "14", "4", "no")
cat3 = Cat.new("Fred", "Sashimi", "16", "5", "yes")

puts cat1.meow
puts cat2.meow
puts cat3.meow
