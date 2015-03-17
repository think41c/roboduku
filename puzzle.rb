class Puzzle

  attr_reader :original_puzzle

  def initialize(filename)
    @original_puzzle ||= read_puzzle(filename).join('').delete("\n").split('')
  end

  def read_puzzle(filename)
    sudoku_puzzle = []
    File.open("./puzzles/#{filename}").readlines.each do |line|
      sudoku_puzzle << line
    end 
  end
end