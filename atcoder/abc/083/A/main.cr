s=gets()
if s
	t=s.split.map{|x|x.to_i}
	if t[0]+t[1]==t[2]+t[3]
		puts "Balanced"
	elsif t[0]+t[1]>t[2]+t[3]
		puts "Left"
	else
		puts "Right"
	end
end
