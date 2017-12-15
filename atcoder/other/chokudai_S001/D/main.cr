gets()
s=gets()
if s
	puts s.split.map{|x|x.to_i}.sort.map{|x|x.to_s}.join(' ')
end
	
