#RUBY - Find max area of an quadrilateral;

=begin
	
	S = (a + b + c + d) / 2
	A = √(S - a)*(S - b)*(S - c)* (S - d) - (a*b*c*d * cos^2((x + y) /2))

	If sum of opposite angles is pi(180) then area will maxed.
	
	A = √(S - a)*(S - b)*(S - c)* (S - d) --> max area formula.

=end

def maxArea(a,b,c,d)

	s = (a + b + c + d) / 2

	return Math.sqrt((s-a) * (s-b) * (s-c) * (s-d))
end

def main

	print "Enter value of a,b,c,d in order : "
	v = gets.chomp.split
	a = v[0].to_i
	b = v[1].to_i
	c = v[2].to_i
	d = v[3].to_i

	puts "Max area is : #{maxArea(a,b,c,d)}"
end
main	