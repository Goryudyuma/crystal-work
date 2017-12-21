gets()
s=gets()
if s
	m={}of Int32=>Int32
	t=s.split.map{|x|x.to_i}
	i=0
	while i < t.size
		if !m.has_key?(t[i])
			m[t[i]]=1
		else
			m[t[i]]+=1
		end
		i+=1
	end
	ans=0
	m.all?{|k,v|
		if k > v
			ans+=v
		else
			ans+=v-k
		end
	}
	puts ans
end
