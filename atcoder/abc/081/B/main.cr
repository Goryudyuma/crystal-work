gets()
s=gets()
if s
	t = s.split.map{|x|x.to_i}
	i = 0
	ans=1<<30
	while(i<t.size)
		tmp = 0
		while t[i] % 2 == 0
			t[i] /= 2
			tmp+=1
		end
		if tmp < ans
			ans = tmp
		end
		i+=1
	end
	puts ans
end
