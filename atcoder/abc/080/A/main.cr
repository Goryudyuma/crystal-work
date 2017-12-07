s=gets()
if s
	t=s.split.map{|x|x.to_i}
	puts ([t[0]*t[1], t[2]]).min
end
