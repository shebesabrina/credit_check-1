require './lib/credit_check'

puts "Enter your card number:"

user_input = gets.chomp
card = CreditCheck.new(user_input)

p card.validity
