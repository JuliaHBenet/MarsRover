require "minitest/autorun"

class TestRover < Minitest::Test
  def test_first_instance
    rover = Rover.new(1, 2, "N")
    rover.run('LMLMLMLMM')
    assert_equal([rover.x, rover.y, rover.orientation], [1,3, "N"])
  end

  def test_second_instance
    rover = Rover.new(3, 3, "E")
    rover.run('MMRMMRMRRM')
    assert_equal([rover.x, rover.y, rover.orientation], [5,1, "E"])
  end
end
