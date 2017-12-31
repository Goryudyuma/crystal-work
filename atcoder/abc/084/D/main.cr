prime=Array.new(100001){true}
prime[0]=false
prime[1]=false
i=0
while i<1000
	if prime[i]
		j=2
		while i*j<100001
			prime[i*j]=false
			j+=1
		end
	end
	i+=1
end
check=Array.new(100001){0}
i=1
while i<100001
	if prime[i]&&prime[(i+1)/2]
		check[i]=1
	end
	check[i]+=check[i-1]
	i+=1
end


qs=gets()
if qs
	q=qs.to_i
	i=0
	while i<q
		lrs=gets()
		if lrs
			lr=lrs.split.map{|x|x.to_i}
			puts check[lr[1]]-check[lr[0]-1]
		end
		i+=1
	end
end
