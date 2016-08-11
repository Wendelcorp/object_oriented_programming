class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    return "#{@meal_time}:00 AM"
      unless @meal_time > 11
        return "(#{@meal_time} - 12):00 PM"
    end
  end

  def meow
    return "I am #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

cat1 = Cat.new("Nikki", "Tuna Can", "8")
cat2 = Cat.new("Bean", "Kibble", "14")

puts cat1.meow
puts cat2.meow
