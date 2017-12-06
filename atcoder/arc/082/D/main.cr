gets()
s=gets()
if s
	r=s.split.map{|x|x.to_i}
	i=0
	ans=0
	while i<r.size
		if r[i]==i+1
			if i+1<r.size && r[i+1] == i+2
				i+=1
			end
			ans+=1
		end
		i+=1
	end
	puts ans
end
