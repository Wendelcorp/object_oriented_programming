class Rover
  attr_accessor :positionx
  attr_accessor :positiony
  attr_accessor :direction

  def initialize(pos_x, pos_y, dir)
    @positionx = pos_x
    @positiony = pos_y
    @direction = dir.upcase
  end

  def instructions(input)
    input.each_char do |instruction|
    if instruction == "L"
      spin_left
    elsif instruction == "R"
      spin_right
    elsif instruction == "M"
      move
    else
      return "No instruction given"
    end
  end

  def move
    if @direction == "N"
      @positiony += 1
    elsif @direction == "E"
      @positionx += 1
    elsif @direction == "S"
      @positiony -= 1
    else #              "W"
      @positionx -= 1
    end
  end

  def spin_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "E"
      @direction = "N"
    elsif @direction == "S"
      @direction = "E"
    else #              "W"
      @direction = "S"
    end
  end

  def spin_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    else #              "W"
      @direction = "N"
    end
  end

  def show_position
    if @positionx.to_i > 9 || @positiony.to_i > 9
      return "Rover lost connection - out of bounds"
    elsif @positionx.to_i < 0 || @positiony.to_i < 0
      return "Rover lost connection - out of bounds"
    else
      return @positionx, @positiony, @direction
    end
  end
end

rover1 = Rover.new(1, 1, "n")

# rover1.move
# rover1.move
# rover1.spin_right
# rover1.spin_right
# rover1.move
#
# puts rover1.show_position

rover1.instructions("RMLMM")

puts rover1.show_position
