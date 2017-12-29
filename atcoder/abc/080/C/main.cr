ns=gets()
if ns
	n=ns.to_i
	i=0
	dict=Array(Int32).new(n){0}
	while i<n
		s=gets()
		if s
			dict[i]=s.gsub(" "){""}.to_i(2)
		end
		i+=1
	end
	memo=Array.new(n){Array.new(10){0}}
	i=0
	while i<n
		s=gets()
		if s
			memo[i]=s.split.map{|x|x.to_i}
		end
		i+=1
	end
	i=1
	ans=-(1<<30)
	while i<1024
		k=0
		now=0
		while k<n
			xx=dict[k]&i
			j=0
			count=0
			while j<10
				if xx&(1<<j)!=0
					count+=1
				end
				j+=1
			end
			now+=memo[k][count]
			k+=1
		end
		if ans<now
			ans=now
		end
		i+=1
	end
	puts ans
end
