ns=gets()
if ns
	n=ns.to_i
	i=0
	set=Set(String).new
	while i<n
		s=gets()
		if s
			set.add(s)
		end
		i+=1
	end
	puts set.size
end
