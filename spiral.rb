#RUBY - Program to nxn shaped number spiral;

def odd_spiral(size, row)
	if row < size - 1
		even_spiral(size - 1, row) << (size - 1) ** 2 + row
	else 
		(0...size).collect { |n| size**2 - 1 - n }
	end
end

def even_spiral(size, row)
	if row == 0 
		(0...size).collect { |n| size**2 - size + n }
	else 
		odd_spiral(size - 1, row - 1).unshift(size **2 - size - row)
	end
end

print "Enter the value of n: "
n = gets.chomp.to_i

size = (ARGV[0] || n).to_i

(0...size).each do |row|
	if size % 2 == 0
		puts even_spiral(size, row).map { |n| n.to_s.rjust((size**2 - 1).to_s.length) }.join(" ")
	else 
		puts odd_spiral(size,row).map { |n| n.to_s.rjust((size**2 - 1).to_s.length) }.join(" ")
	end	
end