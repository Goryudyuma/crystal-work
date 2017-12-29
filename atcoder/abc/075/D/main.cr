nks=gets()
if nks
	nk=nks.split.map{|x|x.to_i}
	n=nk[0]
	knum=nk[1]
	i=0
	points=Array.new(n){Array.new(2){0.to_i64}}
	while i<n
		xys=gets()
		if xys
			points[i]=xys.split.map{|x|x.to_i64}
		end
		i+=1
	end
	i=0
	ans=9223372036854775807_i64
	while i<n
		j=i
		while j<n
			k=j
			while k<n
				l=k
				while l<n
					xmin=points[i][0]
					xmax=points[i][0]
					ymin=points[i][1]
					ymax=points[i][1]
					if xmin>points[j][0]
						xmin=points[j][0]
					end
					if xmax<points[j][0]
						xmax=points[j][0]
					end
					if ymin>points[j][1]
						ymin=points[j][1]
					end
					if ymax<points[j][1]
						ymax=points[j][1]
					end

					if xmin>points[k][0]
						xmin=points[k][0]
					end
					if xmax<points[k][0]
						xmax=points[k][0]
					end
					if ymin>points[k][1]
						ymin=points[k][1]
					end
					if ymax<points[k][1]
						ymax=points[k][1]
					end

					if xmin>points[l][0]
						xmin=points[l][0]
					end
					if xmax<points[l][0]
						xmax=points[l][0]
					end
					if ymin>points[l][1]
						ymin=points[l][1]
					end
					if ymax<points[l][1]
						ymax=points[l][1]
					end

					m=0
					count=0
					while m<n
						if xmin<=points[m][0] && points[m][0]<=xmax && ymin<=points[m][1] && points[m][1]<=ymax
							count+=1
						end
						m+=1
					end
					if count>=knum && ans>(xmax-xmin)*(ymax-ymin)
						ans=(xmax-xmin)*(ymax-ymin)
					end
					l+=1
				end
				k+=1
			end
			j+=1
		end
		i+=1
	end
	puts ans
end


