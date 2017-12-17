s=gets()
if s
	puts ((s.split.map{|x|x.to_i}.sum+1)/2).to_i
end
