require 'test_helper'

class RoverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
ORIGIN = [0,1]
  test "initial position" do
    rover = Rover.new
    assert_equal(ORIGIN, rover.get_position)
  end

  test "moves forward" do
    moves = [0,1]
    rover = Rover.new
    # rover.receive_commands([:M])
    assert_equal(moves, rover.get_position)
  end

  test "turns left" do
    rover = Rover.new
    # rover.receive_commands(:L)
    assert_equal(:N, rover.get_orientation)
  end

  test "turns right" do
    rover = Rover.new
    # rover.receive_commands(:R)
    assert_equal(:N, rover.get_orientation)
  end

# test "on_grid?" / test "grid_dimensions"
# test "receives commands" / test "final position"

end
