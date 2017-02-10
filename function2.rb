def check(isbn_num)
	if ((isbn_num.length < 13) ||(isbn_num.length > 13))
		return false
	else
		return true
	end
end

#def multiply(isbn_num)
	
def isbn_dash_deleter(isbn_num)
	new_num = isbn_num.delete"-"
	return new_num
end

def isbn_space_remover(isbn_num)
	new_num = isbn_num.delete " "
	return new_num
end

def isbn_13?(isbn_num)
	#str='8,6,7,5,3,0,9,1'.split(',').map(&:to_i).inject(0,:+)
	new_numarray = isbn_num.chop.split("").map(&:to_i)
	p new_numarray
	sum_mult = 0
	position_cntr = 1
	new_numarray.each do |isbnnum|
		if position_cntr % 2 == 1
			sum_mult += isbnnum * 1
		else
			sum_mult += isbnnum * 3
		end
		position_cntr += 1
	end
	puts sum_mult
	(10 -(sum_mult % 10)) % 10 == isbn_num[-1].to_i
end