# RUBY - Find all roots of quadratic equation;

print "Enter a,b,c coefficents in order: "
d = gets.chomp.split
a = d[0].to_i
b = d[1].to_i
c = d[2].to_i

puts "Polynomial expression: #{a}x^2 + #{b}x + #{c}"

discriminant = (b * b) - (4 * a * c)
droot = (discriminant ** (0.5))

if discriminant > 0
	x1 = (-b + (droot) / (2 * a))
	x2 = (-b - (droot) / (2 * a))
	puts "There are different two roots, roots are:\n2#{x1} and #{x2}"
elsif discriminant == 0
	x = ((-b) / (2 * a)).to_i
	puts "There are two same root and root is:\n#{x}"
else
	realPart = (-b / (2 * a))
	imaginaryPart = (droot) / ( 2* a)
	x1 = realPart + imaginaryPart
	x2 = realPart - imaginaryPart
	puts "There are complex roots, roots are:\n#{x1} and #{x2}"
end	


