#RUBY - Insertion Sort Algorithm;

def insertionSort(a)
	for i in 1...a.size
		key = a[i]
		j = i-1
		while j >= 0 && key < a[j]
			a[j+1] = a[j]
			j -= 1
		end
		a[j+1] = key
	end
end

array = Array.new(10) {rand(1..25)}
p "Original Array: #{array}"
insertionSort(array)
p "\nSorted Array: #{array}"
