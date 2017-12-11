nk=gets()
s=gets()
if s && nk
	nkx=nk.split.map{|x|x.to_i}
	t=s.split.map{|x|x.to_i}
	i=0
	dict={} of Int32 => Int32
	while i<t.size
		if dict[t[i]]? == nil
			dict[t[i]] = 0
		end
		dict[t[i]]+=1
		i+=1
	end
	array=[] of Int32
	dict.each do |key, value|
		array.push(value)
	end
	i=0
	ans=0
	asr=array.sort
	while i<dict.size-nkx[1] && i < array.size
		ans+=asr[i]
		i+=1
	end
	puts ans
end
