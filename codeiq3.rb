line = gets
ary = line.split(" ")
@m = ary[0].to_i
@n = ary[1].to_i

@sosu = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,@m]

# mより小さな、素数だけを使う。
sum = 0
@limit = 0
while @sosu[@limit] < @m do
	sum += @sosu[@limit]
	@limit += 1
end

# 何パターン検証が必要か？
pt = 3 ** @limit

# パターンの算出＆チェック
count = 0
i = 0
while i < pt do
	j = @limit-1
	
	sahen = @n
	uhen = 0
	ss = sum
	
	w = i
	while j >= 0 do
	    ss -= @sosu[j]
		amari = w % 3
		w = w / 3
		if amari == 0 
			sahen += @sosu[j]
		elsif amari == 2
			uhen += @sosu[j]
		end
		sa = sahen - uhen
		sa = - sa if sa < 0
		if sa > ss
			break
		end
		
		j = j -1
	end
	
	if sahen == uhen
		count += 1
	end
	
	i = i+1
end

puts count