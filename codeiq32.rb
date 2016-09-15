line = gets
ary = line.split(" ")
m = ary[0].to_i
n = ary[1].to_i

@sosu = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,51]
@count = 0

def hoge(m, sum, i)
	if @sosu[i] > m
		if sum == 0
			@count += 1
		end
		return 
	end
	
	j = 0
	while j < 3
	
		case j
		when 0
			s = sum + @sosu[i]
		when 2
			s = sum - @sosu[i]
		when 1
			s = sum
		end
		
		hoge(m, s, i+1)
		
		j += 1
	end

end

hoge(m, n, 0)

puts @count