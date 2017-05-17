@left_hand
@right_hand
@operator

def welcome
	puts "Greetings, from digital realm. I am a calculator, and what is your name?"
	puts "Please type name below"
	name = gets.chomp
	puts "Welcome #{name}, Let's do some calculations."
	puts "What type of calculation would you like to compute"
	puts "I can only add (+), subtract(-), divide(/), and multiply(*) 2 numbers."
	operator_selector
end

def validate_number (left_hand)
	!!(left_hand =~  /^\d+$/)
end


def operator_selector
	puts "Please enter your first number"
	left_hand = gets.chomp.to_i
	puts "Please enter +, -, /, *"
	operator = gets.chomp.to_s
	puts "Please enter second number"
	right_hand = gets.chomp.to_i
	mathematics
	puts "#{left_hand} #{operator} #{right_hand} = #{mathematics}"
end

def mathematics (operator, left_hand, right_hand)
	left_hand.send(operator, right_hand)
end

welcome



