#!/usr/bin/ruby
class Robot
  def initialize
    @dirs = [:N, :E, :S, :W]
    @position = [0, 0]
  end

  def getPos
    @position
  end

  def facing
    @dirs.first
  end

  def turn_left
    @dirs.rotate! -1
  end

  def turn_right
    @dirs.rotate! 1
  end

  def move_north(num)
    x = 0
    while x < num
      @position[1] += 1
      x += 1
    end
    print @position
  end

  def move_east(num)
    x = 0
    while x < num
      @position[0] += 1
      x += 1
    end
    print @position
  end

  def move_south(num)
    x = 0
    while x < num
      @position[1] -= 1
      x += 1
    end
    print @position
  end

  def move_west(num)
    x = 0
    while x < num
      @position[0] -= 1
      x += 1
    end
    print @position
  end

  def distance
    x = @position[0].abs
    y = @position[1].abs
    d = Math.sqrt(x**2+y**2)
    puts "\nDistance is #{d}"
  end

end

bot = Robot.new

puts "Please enter commands for robot to move: "
commands = gets.chomp
cArray = commands.split(",")

for i in cArray do
  # check current facing direction
  currentFacing = bot.facing
  
  # convert string to int for number of steps
  num = i[1].to_i

  if currentFacing == :N && i[0] == "F"
    bot.move_north(num)
  elsif currentFacing == :N && i[0] == "B"
    bot.move_south(num)
  elsif currentFacing == :E && i[0] == "F"
    bot.move_east(num)
  elsif currentFacing == :E && i[0] == "B"
    bot.move_west(num)
  elsif currentFacing == :S && i[0] == "F"
    bot.move_south(num)
  elsif currentFacing == :S && i[0] == "B"
    bot.move_north(num)
  elsif currentFacing == :W && i[0] == "F"
    bot.move_west(num)
  elsif currentFacing == :W && i[0] == "B"
    bot.move_east(num)
  elsif i[0] == 'R'
    bot.turn_right
  elsif i[0] == 'L'
    bot.turn_left
  else 
    print("\nHit invalid input")
  end
  
  # print "\n"
  # print bot.facing()
  # print "\n"
  # print bot.getPos()
  # print "\n"
end

print bot.distance




 

