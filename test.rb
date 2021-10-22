array = [{"1": [1,2,3]}, {"2": [2,3]}, {"1": [3,4]}]

new_hash = {}
array.each do |i|
	if new_hash[i.keys[0]].nil?
	new_hash[i.keys[0]] = i.values[0]
	else 
	new_hash[i.keys[0]] += i.values[0]
	end
end

new_array = []
new_hash.each do |k, v|
	new_array << {"#{k}": v.uniq}
end

print new_array