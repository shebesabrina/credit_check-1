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
    assert_equal 0, @credit_check.times_2
  end

end
