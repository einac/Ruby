# RUBY - A product array puzzle;

=begin 
	Input : arr[] = {10, 3, 5, 6, 2}
	Output: prod[] = {180, 600, 360, 300, 900}
Explanation:
	x = a * b * c * d
	log(x) = log(a * b * c *d)
	log(x) = log(a) + log(b) + log(c) + log(d)
	x = antilog(log(a) + log(b) + log(c) + log(d))
=end	

def productPuzzle(arr,prod,n)
	eps = 1e-9
	sum = 0.0
	for i in 0...n
		sum += Math.log10(arr[i])
	end
	for i in 0...n
		prod << (eps + (10.00) ** (sum - Math.log10(arr[i]))).to_i
	end
	return prod
end

arr = Array.new(5){rand(10) + 1}
prod = []
puts "The original array is: "
p arr
puts "The product array is: "
p productPuzzle(arr,prod,arr.size)