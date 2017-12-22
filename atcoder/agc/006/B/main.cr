nx=gets()
if nx
	nxi=nx.split.map{|x|x.to_i}
	n=nxi[0]
	x=nxi[1]
	if x==1 || x==2*n-1
		puts "No"
	else
		puts "Yes"
		i=1
		j=1
		if x==2
			while i <= n*2-1
				if n-1==i
					puts x+1
				elsif n==i
					puts x
				elsif n+1==i
					puts x-1
				elsif n+2==i
					puts x+2
				else 
					if j==x-1
						j=x+3
					end
					puts j
					j+=1
				end
				i+=1
			end
		else
			while i<=n*2-1
				if n-1==i
					puts x-1
				elsif n==i
					puts x
				elsif n+1==i
					puts x+1
				elsif n+2==i
					puts x-2
				else 
					if j==x-2
						j=x+2
					end
					puts j
					j+=1
				end
				i+=1
			end
		end
	end
end

