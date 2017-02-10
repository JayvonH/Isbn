require "minitest/autorun"
require_relative "function2.rb"

class Test_isbn13 < Minitest::Test

	def test_length_is_equal_to_true
		assert_equal(true, check("867538902714x"))
	end

	def test_returns_true
		assert_equal(true, isbn_13?("9780131495050"))
	end
	def test_returns_false
		assert_equal(false, isbn_13?("9780131495054"))
	end
end