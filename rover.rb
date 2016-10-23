class Rover

    attr_accessor :name
    attr_accessor :direction
    attr_accessor :y_coordinate
    attr_accessor :x_coordinate

  def initialize( name, x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
    @name = name
    print "Welcome to Mars. The #{@name} is at #{@x_coordinate}, #{@y_coordinate}"
    puts "#{@direction}, its a beautiful shade of red."
  end

  def read_instruction (instructions)
    #puts "inside read instruction"
    #puts instructions
    instructions.each_char do |letter|
      if letter == "L"
        turning_left
      elsif letter == "R"
        turning_right
      elsif letter == "M"
        move
      else
        puts "That letter is not an instruction try again"
      end #end of if
    end #end of loop
    puts compass_point
  end

    def turning_left
        if @direction == "N"
            @direction = "E"
        elsif @direction == "E"
            @direction = "S"
        elsif @direction == "S"
            @direction = "W"
        else @direction == "W"
            @direction = "N"
        end

    end

    def turning_right
        if @direction == "N"
            @direction = "E"
        elsif @direction == "E"
            @direction = "S"
        elsif @direction == "S"
            @direction = "W"
        else @direction == "W"
            @direction = "N"
        end

    end

    def compass_point
        if @direction == "N"
            puts "Facing North"
        elsif @direction == "E"
            puts "Facing East"
        elsif @direction == "W"
            puts "Facing West"
        elsif @direction == "S"
            puts "Facing South"
        else
            puts "Interesting.... Thats not a compass point so try again with N,E,S or W."
        end
    end


    def move()
      if @direction == "N"
        @y_coordinate += 1
      elsif @direction == "S"
        @y_coordinate -= 1
      elsif @direction == "E"
        @x_coordinate += 1
      else @direction == "W"
        @x_coordinate -= 1
      end #end of if
    end #end of def

    def max_grid
        if  x_coordinate > 9 || x_coordinate < 1
            abort "Mars is fun, but you have wandered out of the safe zone grid."
        elsif y_coordinate > 9 || y_coordinate < 1
            abort "Mars is fun, but you have wandered out of the safe zone grid."
        end
    end

    #def personal_space
    #    if  x_coordinate = @x_coordinate || y_coordinate =  @y_coordinate
    #        abort "Your rover2 is ontop of rover1! Yikes get a drivers licence we are cutting you off!"
    #    end
    #end

    def personal_space(input1, input2)
        #if  user_x2 = @takenx || user_y2 = @takeny
        if input1 = input2 #|| inputy = @rover1_newspoty
          abort "Your rover2 is ontop of rover1! Yikes get a drivers licence we are cutting you off!"
       end
    end
end #end of class

#class Where_i_stand
#    attr_accessor :takenx
#    attr_accessor :takeny

#    def initialize
#        @takenx = []
#        @takeny = []
#    end

#    def personal_space_x(productx)
#        @takenx << productx
#    end
#    def personal_space_y(producty)
#        @takeny << producty
#    end

#end


puts " We assume the direction you start is your North (like 12 O Clock).
Please enter your starting  x co-ordinate (Don't go out of the safe perimiter)"
user_x1= gets.chomp.to_i


puts "Please enter your starting y co-ordinate"
user_y1 = gets.chomp.to_i


rover1 = Rover.new("rover1", user_x1, user_y1, "N")
rover1.max_grid


#capture user comands as "instructions"
puts "Please enter your instructions (Hint need to be R, L, or M)"
instructions = gets.chomp.upcase.to_s


rover1.read_instruction(instructions)

puts "You are now checking out the sights at #{rover1.x_coordinate}, #{rover1.y_coordinate}. Mars is Fun!"
@rover1_newspotx = rover1.x_coordinate
@rover1_newspoty = rover1.y_coordinate
#
# @rover1_newspotx.max_grid
# @rover1_newspoty.max_grid
puts "Please enter your starting x co-ordinate for the second Rover.
We assume the direction you start is your North (like 12 O Clock)."
user_x2= gets.chomp.to_i

puts "Please enter your starting y co-ordinate"
user_y2 = gets.chomp.to_i

rover2 = Rover.new("rover2", user_x2, user_y2, "N")
rover2.max_grid#.personal_space

#spot_takenx = Where_i_stand.new
#spot_takenx.personal_space_x("#{rover1.x_coordinate}")

#spot_takeny = Where_i_stand.new
#spot_takeny.personal_space_y("#{rover1.y_coordinate}")

@rover2_spotx = rover2.x_coordinate
@rover2_spoty = rover2.y_coordinate


rover2.read_instruction(instructions)

rover2.personal_space(@rover1_newspoty, @rover2_spotx)
rrover2.personal_space(@rover2_spoty, @over2_spoty)

puts "Your second Rover is now gloriously gazing at #{rover2.x_coordinate}, #{rover2.y_coordinate}.
Thats the end of your gets, thanks for visiting Mars."
#Rover 2 co ordinates list N then next line says facing .... need to remove N....?
