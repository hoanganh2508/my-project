array1 = []

array1 << ["AG", "AG1", 70, 70, 1, 30, 3,5]
array1 << ["V", "V001", 20, 10, 1, 15]
array1 << ["A", "A001", 10, 5, 0, 14]
array1 << ["K", "K001", 30, 35, 1, 20]

print array1
array2 = []
array2 << ["AG", "AG001", 100, 100, 1, 50, 6]
array2 << ["V", "V002", 20, 30, 1, 20]
array2 << ["K", "K002", 50, 50, 1, 30]

ag1 = array1[0]
array1.shift

array1 = custom_attribute(array1)

ag2 = array2[0]
array2.shift

array2 = custom_attribute(array2)

count_1 = array1.size
count_2 = array2.size



nth_child_1 = 0
nth_child_2 = 0

while count_1 == 0 || count_2 == 0 do
	if array1[nth_child_1] > array2[nth_child_2] && array1[nth_child_1] > array2[nth_child_2]
		count_2 -= 1
		nth_child_2 += 1
		array1[nth_child_1][2] -= 20
		array1[nth_child_1][3] -= 20
	elsif array1[nth_child_1] < array2[nth_child_2] && array1[nth_child_1] < array2[nth_child_2]
		count_1 -= 1
		nth_child_1 += 1
		array2[nth_child_2] - 20
		array2[nth_child_2] - 20
	else
	 	# if array1[nth_child_3] > array2[nth_child_3] 
	 	# 	count_2 -= 1
	 	# 	array1[nth_child_1] - 20
			# array1[nth_child_2] - 20
	 	# else 
	 	# 	count_1 -= 1
	 	# 	array2[nth_child_1] - 20
			# array2[nth_child_2] - 20
	 	# end
	end
end

def custom_attribute(array, ag)
	array.each do |i|
		case i[0]
		when "V"
			i[3] *= 2 if i[4] == 1
		when "A"
			i[2] *= 1.5 if i[4] == 1
		else
			i[2] *= 3 && i[3] *= 3 if i[4] == 1 
		end

		case ag
		when (1..2)
			...
		when (2..5)
			...
		else
			...
		end
	end

	array
end