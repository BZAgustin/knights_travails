# frozen_string_literal: true

class Board
  attr_accessor :game_board

  def initialize game_board = Array.new
    @game_board = build_board()
  end

  def build_board
    8.times do |i|
      8.times do |k|
        @game_board.push([i, k])
      end
    end
  end

  def knight_moves(origin, destination)
		
  end
end