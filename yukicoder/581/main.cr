s=gets()
if s
	t=s.split.map{|x|x.to_i64}
	puts t[1] ^ t[0]
end
