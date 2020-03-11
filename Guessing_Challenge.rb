#!/usr/bin/env ruby

=begin CHALLENGE REQUIREMENTS:
-ask player for name
-say hello, user and explain rules
-pick a random number, have player guess
-tell player if guess is correct
	-loop to allow three guesses

GENERATE RANDOM NUMBER: 'rand' -- returns a float in 0.0--1.0
rand(arg int) -- return integer 0-99

=end
puts " --------------------"
puts "| Ruby Guessing Game |"
puts " --------------------"

print "What is your name? "
response = gets.chomp
puts "Hello, #{response}!"
puts "We are going to play a guessing game."
puts "I will choose a random number between 1 and 10,"
puts "and you will have three (3) chances to guess it"
puts "Ready? BEGIN! "


random_num = rand(11)
puts "#{random_num}"
i=1
print "Guess #{i}: "
guess = gets.chomp


until i==4
	#i+=1 #ruby doesn't have ++ increment!!!!
	if guess.to_i == random_num
		puts "Congrats! Great guessing!"
		break
	else
		puts "Sorry, that wasn't it. "
		print"Guess #{i+=1}: "
		guess = gets
		if i==3 && guess.to_i != random_num
			puts "Sorry, that was your last guess."
			break
		end
	end
end


	
	


