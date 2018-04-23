# RUBY - BubbleSort Algorithm;

def bubbleSort(array)

	n = array.length

	for i in 0...n-1
		swapped = false
		for j in 0...n-i-1
			if array[j] > array[j+1]
				temp = array[j]
				array[j] = array[j+1]
				array[j+1] = temp
				swapped = true
			end
		end

		if swapped == false
			break
		end	
	end
	array
end				

array = Array.new(10){rand(1..25)}
p bubbleSort(array)