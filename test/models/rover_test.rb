require 'test_helper'

class RoverTest

# file = File.open('text.txt', 'wb')
# lines = file.readlines

# dimensions = lines[0]

# rover_initial_data = lines[1].split(' ')
# rover_instructions = lines[2]

  test "first instance" do
    rover = Rover.new(1, 2, "N")
    rover.run('LMLMLMLMM')
    assert_equal([rover.x, rover.y, rover.orientation], [1,3, "N"])
  end

  test "second instance" do
    rover = Rover.new(3, 3, "E")
    rover.run_commands('MMRMMRMRRM')
    assert_equal([rover.x, rover.y, rover.orientation], [5,1, "E"])
  end

  test "turns left" do
    rover = Rover.new(0,0,"N")
    orientation = "N"
    instructions = "L"
    rover.run_commands
    assert_equal("W", rover.get_final_orientation)
  end

  test "turns right" do
    rover = Rover.new(0,0,"N")
    orientation = "N"
    instructions = "R"
    rover.run_commands
    assert_equal("E", rover.get_final_orientation)
  end

end
