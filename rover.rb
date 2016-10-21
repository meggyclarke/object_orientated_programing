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
    print "Welcome to Mars. The #{@name} thinks it is at #{@x_coordinate}, #{@y_coordinate}"
    puts "#{@direction}, its a beautiful shade of red."
  end

  #def print_position
    #puts "inside print position"
    #puts @x_coordinate
    #puts @y_coordinate
    #puts @direction
  #end

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
        # if direction_to_turn == "left" ****dropping print_position to use @'s'
        #     if print_position == "N"
        #         print_position = "E"
        #     elsif print_position == "E"
        #         print_position = "S"
        #     elsif print_position == "S"
        #         print_position = "W"
        #     else print_position == "W"
        #         print_position = "N"
        #     end #end of nested if
        #end #end of if


    #     elsif direction_to_turn == "right" **** this is too much, lets try it as a unique dev
    #         if print_position == "N"
    #             print_position = "W"
    #         elsif print_position == "W"
    #             print_position = "S"
    #         elsif print_position == "S"
    #             print_position = "E"
    #         else print_position == "E"
    #             print_position = "N"
    #         end #end of nested if
    #     end #end if if
    # end #end of def

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

    #def print_position
      #puts "inside print position"
      #{}"#{@x_coordinate} + turn()" - hash @ advice from tyler
       #@y_coordinate + turn()
      #return @direction + move()
    #end
end #end of class

#Create new Rover instance
#over1 = Rover.new("rover1", 0, 0, "N")
#rover1.print_position

puts " We assume the direction you start is your North (like 12 O Clock). Please enter your starting  x co-ordinate"
user_x1= gets.chomp.to_i

puts "Please enter your starting  y co-ordinate"
user_y1 = gets.chomp.to_i

rover1 = Rover.new("rover1", user_x1, user_y1, "N")

#capture user comands as "instructions"
puts "Please enter your instructions (Hint need to be R, L, or M)"
instructions = gets.chomp.upcase.to_s

rover1.read_instruction(instructions)

puts "You are now checking out the sights at #{rover1.x_coordinate}, #{rover1.y_coordinate}. Mars is Fun!"






# results first line of code 9 9
#current position and direction
#serries of left move left move move move right
#another co-ordinates and direction
#more moves and lefts
