s=gets
if s
	c = 'a'
	ans = 1 << 30
	while c <= 'z'
		prev = -1
		now = 0
		ret = 0
		while now < s.size
			if s[now] == c
				if ret < now - prev
					ret = now - prev
				end
				prev = now
			end		
			now += 1
		end
		if ret < now - prev
			ret = now - prev
		end
		if ret < ans
			ans = ret
		end
		c += 1
	end
	puts ans - 1
end	
