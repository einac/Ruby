# Program to make a histogram of an array;

def printHistogram(arr,n)
	maxElm = arr.sort.last

	i = maxElm
	while i >= 0
		print i.to_s.ljust(2)
		print "  | "
	
		for j in 0..n
			if arr[j].to_i > i
				print " x "
			else
				print "   "
			end
		end
		print "\n"
		i -= 1
	end
	
	for i in 0..n+3
		print "---"
	end
	print "\n"
	print "     "
	
	for i in 0..n	
		printf arr[i].to_s.rjust(3)
	end
end

arr = [10,9,12,4,15,2,8,7,3,1]
n = arr.size
printHistogram(arr,n) 		

