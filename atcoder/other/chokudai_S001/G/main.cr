gets()
s=gets()
if s
	t=s.split
	i=0
	ans=0
	while i<t.size
		ans=(ans.to_s+t[i]).to_i64
		ans%=1000000007	
		i+=1
	end
	puts ans
end
