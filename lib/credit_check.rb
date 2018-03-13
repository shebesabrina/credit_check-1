require 'pry'

class CreditCheck
  attr_reader :card
  def initialize(card)
    @card = card
  end

  def times_2
    reverse = @card.digits
    digit_index = reverse.map.with_index do |number, index|
      number * 2 if index.odd?
    end
    digit_index.compact
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

end
