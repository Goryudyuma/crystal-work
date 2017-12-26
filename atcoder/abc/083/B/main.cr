nabs=gets()
if nabs
	nab=nabs.split.map{|x|x.to_i}
	i=1
	ans=0
	while i<=nab[0]
		p=i.to_s.bytes.map{|x|(x.to_i-48)}.sum
		if nab[1]<=p&&p<=nab[2]
			ans+=i
		end
		i+=1
	end
	puts ans
end
