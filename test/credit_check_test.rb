require './lib/credit_check'
require './test/test_helper'
require 'pry'

class CreditCheckTest < Minitest::Test
  def setup
    @credit_check = CreditCheck.new(5541808923795240)
  end

  def test_it_exists
    assert_instance_of CreditCheck, @credit_check
  end

  def test_it_can_multiple_other_digit_from_right_most
    result = [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10]
    assert_equal result, @credit_check.times_2
  end

  def test_it_can_add_any_double_digits_in_array

    result = [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1]
    assert_equal result, @credit_check.double_digit
  end

  def test_sum_array

    assert_equal 70, @credit_check.sum_digits
  end

  def test_if_valid

    assert_equal "The number is valid!", @credit_check.validity
  end

  def test_samples_if_valid

    credit_check_1 = CreditCheck.new(5541808923795240)
    credit_check_2 = CreditCheck.new(4024007136512380)
    credit_check_3 = CreditCheck.new(6011797668867828)

    credit_check_4 = CreditCheck.new(5541801923795240)
    credit_check_5 = CreditCheck.new(4024007106512380)
    credit_check_6 = CreditCheck.new(6011797668868728)

    assert_equal "The number is valid!", credit_check_1.validity
    assert_equal "The number is valid!", credit_check_2.validity
    assert_equal "The number is valid!", credit_check_3.validity

    assert_equal "The number is invalid!", credit_check_4.validity
    assert_equal "The number is invalid!", credit_check_5.validity
    assert_equal "The number is invalid!", credit_check_6.validity
  end

  def test_amex_cards
    
    credit_check_1 = CreditCheck.new(342804633855673)
    credit_check_2 = CreditCheck.new(342801633855673)

    assert_equal "The number is valid!", credit_check_1.validity
    assert_equal "The number is invalid!", credit_check_2.validity
  end
end
