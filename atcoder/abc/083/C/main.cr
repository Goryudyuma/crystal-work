xys=gets()
if xys
	xy=xys.split.map{|x|x.to_i64}
	ans=0
	while xy[0]<=xy[1]
		xy[0]*=2
		ans+=1
	end
	puts ans
end
