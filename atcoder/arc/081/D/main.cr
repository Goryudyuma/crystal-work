n=gets()
s1=gets()
s2=gets()
if n && s1 && s2
	ans=1.to_i64
	prev=0
	i=0
	while i<n.to_i
		if s1[i]==s2[i]
			if prev==0
				ans*=3
			elsif prev==1
				ans*=2
			end
			prev=1
		else
			if prev==1
				ans*=2
			elsif prev==2
				ans*=3
			else
				ans*=6
			end
			prev=2
			i+=1
		end
		ans%=1000000007
		i+=1
	end
	puts ans
end

