def check(isbn_num)
	if ((isbn_num.length < 10) || (isbn_num.length > 10))
		return false
	else
		return true
	end
end