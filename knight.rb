# frozen_string_literal: true

class Knight
  attr_accessor :position, :possible_moves, :moves

  def initialize(position)
    @position = position
		@possible_moves = find_moves(position)
		@moves = Array.new
  end
	
	def find_moves(origin = @position, destination)
		found_moves = [[origin[0] - 1, origin[1] + 2],
									 [origin[0] + 1, origin[1] + 2],
									 [origin[0] + 2, origin[1] + 1],
									 [origin[0] + 2, origin[1] - 1],
									 [origin[0] + 1, origin[1] - 2],
									 [origin[0] - 1, origin[1] - 2],
									 [origin[0] - 2, origin[1] - 1],
									 [origin[0] - 2, origin[1] + 1]]
		
		found_moves.reject { |move| (move[0] > 8 || move[0] < 0) || (move[1] > 8 || move[1] < 0) }
	end
end

knite = Knight.new([4, 5])

p knite.possible_moves

