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
end