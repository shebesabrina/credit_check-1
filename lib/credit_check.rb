require 'pry'

class CreditCheck
  attr_reader :card

  def initialize(card)
    @card = card.to_i
  end

  def times_2
    reverse = @card.digits
    reverse.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def double_digit
    times_2.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def sum_digits
    double_digit.sum
  end

  def validity
    if (sum_digits % 10).zero?
      'The number is valid!'
    else
      'The number is invalid!'
    end
  end
end
