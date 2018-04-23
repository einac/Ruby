# Program to find standart deviation of the given random array;

def stdDev(arr)
	sum1 = 0.0
	sum2 = 0.0
	arr.each do |s|
		sum1 += s
	end
	avg = sum1 / arr.size
	x = arr.map{|e| e = (e - avg)** 2}
	
	x.each do |a|
		sum2 += a
	end
	std = (sum2 / arr.size) ** (0.5)	 
end

array = Array.new(10) {rand(10)}
puts "The given array:"
p array
puts "Standart deviation of the given array: "
puts stdDev(array)


