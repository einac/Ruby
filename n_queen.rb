#RUBY - N-Queen Problem

class Board
	def initialize(n)
		@n = n
		@board = Array.new(n)
		@board.map! {Array.new(n, "  _  ")}
	end
	
	def printBoard
		puts "Board:\n"
		@board.each_index do |row|
			@board.each_index do |col|
				print "#{@board[row][col]}"
			end
			puts
		end
	end

	def safeRow(targetRow)
		0.upto(@n-1) do |col|
			if @board[targetRow][col] == "  Q  "
				return false
			end
		end
	end
	
	def safeCol(targetCol)
		0.upto(@n-1) do |row|
			if @board[row][targetCol] == "  Q  "
				return false
			end
		end
	end

	def safeDiagonal(targetRow,targetCol,rowMod,colMod)
		row,col = targetRow + rowMod, targetCol + colMod

		while true
			break if (row >= @n) || (col >= @n) || (row < 0) || (col < 0)

			if @board[row][col] == "  Q  "
				return false
			end
			row += rowMod
			col += colMod
		end
		return true
	end
	
	def safe(targetRow,targetCol)
		return false if !safeRow(targetRow)
		return false if !safeCol(targetCol)

		return false if !safeDiagonal(targetRow,targetCol,1,1)
		return false if !safeDiagonal(targetRow,targetCol,1,-1)
		return false if !safeDiagonal(targetRow,targetCol,-1,1)
		return false if !safeDiagonal(targetRow,targetCol,-1,-1)
		
		return true
	end

	def solve
		solve1(0)
	end
	
	def solve1(row)
		0.upto(@n - 1) do |col|
			if safe(row,col)
				@board[row][col] = "  Q  "
				if row == (@n - 1)
					printBoard
				else
					solve1(row + 1)
				end
				@board[row][col] = "  _  "
			end
		end
	end
end

board = Board.new(8).solve						
