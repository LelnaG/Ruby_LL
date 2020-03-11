#!/usr/bin/env ruby

#Ruby Blanks: fill in the blank (Mad Libs)
#"I decided to ____ a ______ party for my _____ ______"
# ----decide if the blank should be a verb, adjective, noun, etc
#place word types into an array
#i.e blanks = ['verb', 'adjective', 'adjective, 'noun']
#ask user for words
#output final resulting sentence

blanks = ['verb', 'adjective', 'adjective', 'noun']
vowels = ['a', 'e', 'i', 'o', 'u']
#prompt user

blanks.map! do |word|
	article = vowels.include?(word[0]? 'an' : 'a')
	print "Give #{article} #{word}: "
	response = gets.chomp	
end


finalSentence = "I decided to #{blanks[0]} a #{blanks[1]} party for my #{blanks[2]} #{blanks[3]}"
puts finalSentence 