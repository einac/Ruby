def polynomial
	poly = {}

	print "Enter the degree of polynomial: "
	deg = gets.chomp.to_i

	while deg >= 0
		print "Enter coef of x^#{deg}: "
		coef = gets.chomp.to_i
		poly[deg] = coef
		deg -= 1
	end
	poly	
end

def printPoly
	h = polynomial
	n = h.size-1
	print "\nPolynomial is: "
	for i in 0..n
		if n-i == 0
			print "#{h[n-i]}"
		elsif h[n-i] == 1
			print "x^#{n-i}"	
		else
			print "#{h[n-i]}x^#{n-i}"
		end
		

		if n-i != 0
			print " + "
		end		
	end	
end
printPoly	

