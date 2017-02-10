require "minitest/autorun"
require_relative "function.rb"

class TestIsbn < Minitest::Test

	def test_length_is_equal_to_true
		assert_equal(true, check("867530911x"))
	end
	def test_length_less_than_10_equal_false
		assert_equal(false,check("86753091x"))
	end
	def test_removes_dashes
		assert_equal("86753", isbn_dash_deleter("8-6-7-5-3"))
	end
	def test_removes_spaces
		assert_equal("86753", isbn_space_remover("8 6 7 5 3"))
	end
	def test_sumcheck
		#assert_equal(39,isbn_checksum(8+6+7+5+3+0+9+1))
		assert_equal(true,isbn_10?('7421394761'))
	end
	def test_sumx
		assert_equal(true,isbn_10?('877195869x'))
	end

end