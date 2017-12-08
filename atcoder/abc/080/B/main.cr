s=gets()
if s
	if s.to_i % s.chars.map{|x|x.to_i}.sum == 0
		puts "Yes"
	else
		puts "No"
	end
end
