# ary = [1,2,3]

# ary.each_with_index do |num, i|
# 	ary[i] = "same thing"
# end

# ary.each do |num|
# 	num = num + 1 
# end

# # # return value of .each is the array that you pass through

# p ary

# # ary.map do |animal|
# # 	animal << "s"
# # end

# # p ary

aminals = ["cat", "dog", "duck"]

def each_ex(ary)
	ary.each do |element|
		element + "s"
	end
end

def map_ex(ary)
	ary.map! do |element|
		element + "s"
	end
end

p each_ex(aminals)
p map_ex(aminals)
p aminals
