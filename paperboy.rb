class Paperboy

  attr_accessor :name

  def initialize(name)
    @name = name
    @experiance = 0
    @earnings = 0

  end

  def deliver(start_address, end_address)
    houses = end_address - start_address
    @experiance = @experiance + houses
    if houses == quota
      money = houses * 0.25
    elsif houses >= quota
      money = (quota * 0.25 + (houses - quota) * 0.5)
    else
      money = houses * 0.25 -2
    end
    @earnings = @earnings + money
  end


  def quota
    quota = @experiance /2 +50
  end

  def report
    if @experiance > quota
     puts "I'm #{name}, I delivered #{@experiance} papers, so super cool I made $#{@earnings}"
   elsif @experiance == quota
     puts "I'm #{name}, I delivered #{@experiance} papers, so I just did enough to get $#{@earnings}"
   else @experiance < quota
     puts "I'm #{name}, I delivered #{@experiance} papers, so I owe $#{@earnings} to the Paper :( whomp whomp"
    end
  end
end

johnny = Paperboy.new("Johnny the Rocket")
johnny.deliver(100, 265)
johnny.deliver(75, 900)
johnny.deliver(2, 750)
molly = Paperboy.new("Molly one leg")
molly.deliver(5, 12)
molly.deliver(7, 10)
molly.deliver(3, 7)
derek = Paperboy.new("Derek regular kid")
derek.deliver(42, 92)
derek.deliver(27, 71)
derek.deliver(15, 45)


puts johnny.report, molly.report, derek.report
