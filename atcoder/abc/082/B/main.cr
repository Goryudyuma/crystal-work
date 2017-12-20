s=gets()
t=gets()
if s&&t
	if s.bytes.sort<t.bytes.sort.reverse
		puts "Yes"
	else
		puts "No"
	end
end
