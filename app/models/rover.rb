class Rover

attr_accessor :x, :y, :orientation

  def initialize(x, y, orientation)
    @x = x
    @y = y
    @orientation = orientation
  end

# gets instructions read from file in get_instructions
# method and separates them into commands
  def run(instructions)
    instructions.chars.each { |command| execute(command) }
  end

# executes commands depending on string given
  def execute(command)
    turn_left if command == "L"
    turn_right if command == "R"
    move_forward if command == "M"
  end


  def get_final_position
    final_position = @position
  end

  def get_final_orientation
    final_orientation = @orientation
  end


private

  def turn_left
    self.orientation = case orientation
                       when "N" then "W"
                       when "W" then "S"
                       when "S" then "E"
                       when "E" then "N"
                       end
  end

  def turn_right
    self.orientation = case orientation
                      when "N" then "E"
                      when "E" then "S"
                      when "S" then "W"
                      when "W" then "N"
                      end
  end

  def move_forward
    case orientation
    when "N" then self.y += 1
    when "E" then self.x += 1
    when "S" then self.y -= 1
    when "W" then self.x -= 1
    end
  end

end
# END OF ROVER CLASS

# Reads the first line of instructions file
# to get the grid dimensions
def get_grid_dimesions
  grid_dimensions = IO.readlines("file.txt")[0]
end

# Reads the second line of instructions file
# to get the initial position (x and y)
def get_intial_position
  line = IO.readlines("file.txt")[1]
  @x = line.slice[0].to_i
  @y = line.slice[1].to_i
  @position = [@x, @y]
end

# Reads the second line of instructions file
# to get the initial orientation
def get_orientation
  line = IO.readlines("file.txt")[1]
  @orientation = line.slice[2].to_s
end

# Reads third line of instructions file
# to get the rover movements and rotations
def get_instructions
  @instructions = IO.readlines("file.txt")[2]
end
