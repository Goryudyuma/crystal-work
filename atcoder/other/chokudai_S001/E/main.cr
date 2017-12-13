gets()
s=gets()
if s
	t=s.split.map{|x|x.to_i}
	i=1
	while i <= t.size
		if t[i-1] == 1
			puts i
		end
		i+=1
	end
end
