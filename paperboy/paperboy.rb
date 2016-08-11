class Paperboy

  attr_reader :name
  attr_accessor :experience
  attr_accessor :side

  attr_reader :earnings #this is read only

  def initialize(name, experience, side)
    @name = name
    @experience = experience
    @side = side
    @earnings = 0
    @quota = 0
  end

  def quota
    @quota = (@experience / 2) + 50
      # if @quota < 50
      #   return "Must deliver more"
      # else
      #   return (@experience / 2.0) + 50
      # end
  end

  def deliver(start_address, end_address)
   exp = (end_address - start_address)/2
   @experience += exp
   return exp
  end

  def earnings(papers_delivered)

    if papers_delivered <= quota
      @earnings += papers_delivered * 0.25 - 2.0
    elsif papers_delivered > quota
      @earnings += papers_delivered * 0.5
    end

    return @earnings
  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned #{earnings} so far"
  end

end

bryce = Paperboy.new("Bryce", 0, "even")

puts bryce.earnings(65)
