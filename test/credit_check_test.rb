require './lib/credit_check'
require './test/test_helper'
require 'pry'

class CreditCheckTest < Minitest::Test
  def setup
    @credit_check = CreditCheck.new(4929735477250543)
  end

  def test_it_exists
    assert_instance_of CreditCheck, @credit_check
  end

  def test_it_can_multiple_other_digit_from_right_most
    result = [8, 0, 4, 14, 10, 14, 4, 8]
    assert_equal result, @credit_check.times_2
  end

  def test_it_can_add_any_double_digits_in_array
    result = [8, 0, 4, 5, 1, 5, 4, 8]
    assert_equal result, @credit_check.double_digit
  end

end
