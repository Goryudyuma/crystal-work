i=0
ans=0
rika=100
shakai=100
while i<6
	s=gets()
	if s
		n=s.to_i
		ans+=n
		if i<4 
		       	if rika > n
				rika=n
			end
		else
			if shakai>n
				shakai=n
			end
		end
	end
	i+=1
end
puts ans-rika-shakai
