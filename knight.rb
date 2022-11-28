# frozen_string_literal: true
require './board.rb'

class Knight
  attr_accessor :moves
  include Board

  def initialize(moves)
    @moves = moves
  end

  def knight_moves(origin, destination)
    return "Destination out of bounds" unless game_board.include?(destination)
    return "Origin out of bounds" unless game_board.include?(origin)


  end

  def build_moves
    game_board
  end
end