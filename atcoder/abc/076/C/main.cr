s=gets()
t=gets()
if s && t
	i = 0
	ans = Array(String).new(0)
	while (i <= s.size() - t.size())
		j = 0
		f=true
		while(j < t.size())
			if(!(s[i+j]=='?'||s[i+j]==t[j]))
				f=false
				break
			end
			j += 1
		end
		if(f)
			sx=s
			j=0
			while(j<t.size())
				sx=sx.sub(i+j, t[j]);
				j+=1
			end
			j=0
			while(j<sx.size())
				if(sx[j]=='?')
					sx=sx.sub(j,'a');
				end
				j+=1
			end
			ans.push(sx)
		end
		i += 1
	end
	if ans.size === 0
		puts "UNRESTORABLE"
	else
		puts ans.sort[0]
	end
end
