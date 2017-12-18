ni=gets()
s=gets()
if s && ni
	n=ni.to_i

	t=s.split.map{|x|x.to_i}
	i=1
	i=0
	j=0
	sum=0
	ans=0
	while true
		if sum == n
			ans+=1
			if j < t.size
				sum += t[j]
				j+=1
			end
			if i < t.size
				sum-=t[i]
				i+=1
			end
		elsif sum < n && j < t.size
			sum += t[j]
			j+=1
		elsif i < t.size
			sum-=t[i]
			i+=1
		else
			break
		end
	end
	puts ans
end
