class Rover < ApplicationRecord

  # @x = x
  # @y = y
  # CARDINAL = [N, S, E, W].freeze
  # @cardinal = CARDINAL

  def initilize
    @position = [@x, @y, @cardinal]
    @orientation = :N
  end

  def get_position
    @position = [0,1]
  end

  def get_orientation
    @orientation = :N
  end

  def receive_commands
    @position = [0,1]
    @orientation = :W if commands.first == :L
    @orientation = :E if commands.first == :R
    commands.each do |command|
      turn_left if command == :L
      turn_right if command == :R
    end
  end

  private

  def turn_left
    case
    when @orientation == :N
      @orientation == :W

    when @orientation == :W
      @orientation == :S

    when @orientation == :S
      @orientation == :E

    when @orientation == :E
      @orientation == :N
    end
  end

  def turn_right
    case
    when @orientation == :N
      @orientation == :E

    when @orientation == :E
      @orientation == :S

    when @orientation == :S
      @orientation == :W

    when @orientation == :W
      @orientation == :N
    end
  end

end
