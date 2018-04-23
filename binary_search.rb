# RUBY - Binary Search Algorithm;

def binarySearch(array,n,x)

	index_start = 0
	index_end = n-1

	while index_start <= index_end

		index_middle = (index_start + index_end) / 2

		if array[index_middle] == x
			return index_middle
		elsif x < array[index_middle]
			index_end = index_middle - 1
		else
			index_start = index_middle + 1
		end
	end
	
	"not found"
end

# if searched number: x = 8;

array = [2,4,12,32,21,65]
puts binarySearch(array,array.size,65)