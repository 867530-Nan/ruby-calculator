
def welcome
	puts "Greetings, from digital realm. I am a calculator, and what is your name?"
	puts "Please type name below"
	name = gets.chomp
	puts "Welcome #{name}, Let's do some calculations."
	operator_selector
end

def operator_selector
	puts "What type of calculation would you like to compute"
	puts "I can add (+), subtract(-), divide (/), and multiply (*)."
	puts "Type 1 for addition, Type 2 for subtraction, Type 3 for division, or Type 4 for multiplication"
	get_user_input
end

def get_user_input 
	operator = gets.chomp.to_i
	case operator
	when 1
		addition
	when 2
		subtraction
	when 3
		division
	when 4
		multiplication
	else
		puts "You probably did not the directions carefully."
		operator_selector
	end
end

def addition
	puts "What is the first number you'd like to add"
	first_number = gets.chomp.to_i
	puts "And what is the second number you'd like to add"
	second_number = gets.chomp.to_i
	result = first_number + second_number
	puts "Here's what I found:"
	puts "#{first_number} added to #{second_number} equals #{result}"
	welcome
end

def subtraction
	puts "What is the first number you'd like to subtract"
	first_number = gets.chomp.to_i
	puts "And what is the second number you'd like to subtract"
	second_number = gets.chomp.to_i
	result = first_number - second_number
	puts "Here's what I found:"
	puts "#{first_number} subtracted by #{second_number} equals #{result}"
	welcome
end

def division
	puts "What is the first number you'd like to divide"
	first_number = gets.chomp.to_i
	puts "And what is the second number you'd like to divide"
	second_number = gets.chomp.to_i
	result = first_number / second_number
	puts "Here's what I found:"
	puts "#{first_number} divided by #{second_number} equals #{result}"
	welcome
end

def multiplication
	puts "What is the first number you'd like to multiply"
	first_number = gets.chomp.to_i
	puts "And what is the second number you'd like to multiply"
	second_number = gets.chomp.to_i
	result = first_number * second_number
	puts "Here's what I found:"
	puts "#{first_number} multiplied by #{second_number} equals #{result}"
	welcome
end

welcome



