# RUBY - Minimum tiles of sizes in powers of two to cover whole area

=begin
	Example:
		Input : N = 5 M = 6
		Output: 9
	Explanation:
		Area of 5 x 6 can be covered with minimum
		9 tiles; 6 tiles of 1x1,2 tiles of 2x2,
		1 tile of 4x4.
=end

def minTiles(n,m)
	# when area is 0
	if (n == 0 || m == 0)
		return 0
	# when n and m both are even
	# calculate	tiles for n/2 x m/2
	elsif (n % 2 == 0 && m % 2 == 0)
		return minTiles(n/2,m/2)
	# when n is even, m is odd
	# use a row of 1x1 tiles
	elsif (n % 2 == 0 && m % 2 == 1)
		return (n + minTiles(n/2,m/2))
	# when n is odd, m is even
	# use a column of 1x1 tiles	
	elsif (n % 2 == 1 && m % 2 == 0)
		return (m + minTiles(n/2,m/2))
	# when n and m both are odd
	# add row + column number of tiles	
	else
		return (n + m - 1 + minTiles(n/2,m/2))
	end		
end

print "Enter the value of n: "
n = gets.chomp.to_i
print "Enter the value of m: "
m = gets.chomp.to_i
print minTiles(n,m)
