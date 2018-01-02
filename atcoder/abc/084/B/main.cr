abs=gets()
ss=gets()
if abs&&ss
	ab=abs.split
	if Regex.new("^\\d{"+ab[0]+"}-\\d{"+ab[1]+"}$")===ss
		puts "Yes"
	elsif
		puts "No"
	end
end
