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

bot.move_north(4)
bot.move_east(3)
bot.move_south(4)
bot.move_west(7)
bot.distance
