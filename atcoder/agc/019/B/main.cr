s=gets()
if s
	ans=((s.size).to_i64*(s.size-1).to_i64/2).to_i64
	now='a'
	while now<='z'
		ans-=((s.count(now).to_i64)*(s.count(now).to_i64-1)/2).to_i64
		now+=1
	end
	puts ans+1
end

