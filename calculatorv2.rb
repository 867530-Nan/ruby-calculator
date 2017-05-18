@left_hand
@right_hand
@op
@name

def welcome
	puts "Greetings, from digital realm. I am a calculator, and what is your name?"
	puts "Please type name below"
	@name = gets.chomp
	puts "Welcome #{@name}, Let's do some calculations."
	puts "What type of calculation would you like to compute"
	puts "I can only add (+), subtract(-), divide(/), and multiply(*) 2 numbers."
	operator_selector
end

def second_menu
	puts "So would you like to compute another math equation?"
	answer = gets.chomp
	case answer
	when 'yes'
		operator_selector
	when 'no'
		exit
	else
		puts "Please enter a new equation"
		second_menu
	end
end


def left
	left_hand = gets.chomp
	unless left_hand.match(/^\d+$/)
		puts "Please enter a valid number"
		left
	end
	left_hand.to_i
end

def right
	right_hand = gets.chomp
	unless right_hand.match(/^\d+$/)
		puts "Please enter a valid number"
		right
	end
	right_hand.to_i
end


def operator
	op = gets.chomp
	unless op.match(/^[+-\/*]$/)
		puts "Please type correct character"
		operator
	end
	op.to_s
end

def operator_selector
	puts "Please enter your first number"
	left
	puts "Please enter +, -, /, *"
	operator
	puts "Please enter second number"
	right
	mathematics
end

def mathematics
	case @op
	when '-'
		answer = @left_hand - @right_hand
		puts "@left_hand - @right_hand = answer"
	when '+'
		answer = @left_hand + @right_hand
		puts "@left_hand + @right_hand = answer"
	when '/'
		answer = @left_hand / @right_hand
		puts "@left_hand / @right_hand = answer"
	when '*'
		answer = @left_hand * @right_hand
		puts "@left_hand * @right_hand = answer"
	end
	puts "Your equation is #{left_hand} @op @right_hand = #{answer}"
end

welcome



