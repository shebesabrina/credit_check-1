class CreditCheck
  attr_reader :card
  def initialize(card)
    @card = card
  end

  def times_2
    reverse = @card.digits
    reverse.map.with_index do |number, index|
      number * 2 if index.odd?
    end
  end
end
