class BubbleSort
	def sort(arr)
		sorted = false
		until sorted
			sorted = true
			for i in 0..(arr.size - 2)
				if arr[i] > arr[i+1]
					sorted = false
					arr[i],arr[i+1] = arr[i+1],arr[i]
				end
			end
		end
		return arr
	end
end

def testBubbleSort
	bs = BubbleSort.new
	unsorted_arr = Array.new(15) {rand(25)}
	puts "Unsorted Array: "
	p unsorted_arr
	result = bs.sort(unsorted_arr)
	puts "Sorted Array: "
	p result
end
testBubbleSort	
