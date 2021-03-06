def check(isbn_num)
	if ((isbn_num.length < 10) || (isbn_num.length > 10))
		return false
	else
		return true
	end
end

def isbn_dash_deleter(isbn_num)
	new_num = isbn_num.delete"-"
	return new_num
end

def isbn_space_remover(isbn_num)
	new_num = isbn_num.delete " "
	return new_num
end

def isbn_10?(isbn_num)
	#str='8,6,7,5,3,0,9,1'.split(',').map(&:to_i).inject(0,:+)
	new_numarray = isbn_num.chop.split("").map(&:to_i)
	p new_numarray
	multi_accum = 1
	sum_mult = 0
	new_numarray.each do |isbnnum|
		sum_mult += isbnnum * multi_accum
		multi_accum += 1
	end
	if sum_mult % 11 == 10
		isbn_num[-1].downcase == "x"
	else
		sum_mult % 11 == isbn_num[-1].to_i
	end
end