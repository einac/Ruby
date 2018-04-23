# RUBY - Get the max value in array;

array = [12,4,17,34,65,41,13,98,20,11,72]

maxv = array[0]

i = 1
while i < array.length

	if maxv < array[i]
		
		maxv = array[i]
	end

	i = i + 1 # i += 1 

end	

puts "\nThe max value is: #{maxv}"
