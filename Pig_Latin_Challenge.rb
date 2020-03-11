#!/usr/bin/env ruby
#convert any word into pig latin

#words that begin with 1 consonant, consonant moves to the end, followed by 'ay
#consonant cluster, the whole cluster moves to the end
#TIP: a constant cluster is all letters before the first vowel; identify where first vowel is


def pig_latin_chop(word)
	#split single word into characters

	wordArray = word.split("") 
	vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
	until vowels.include?(wordArray[0])==true
		consonant = wordArray.shift().downcase
		wordArray = wordArray.push(consonant)
	end
	newWord = wordArray.join()+ "ay"
end

def pig_latin(sentence)
	#split sentence into single words
	#call pig_latin_chop to split each word into characters
	words = sentence.split(' ')
	newSentence = words.map do |word|
		pig_latin_chop(word)
	end
	newSentence.join(' ').capitalize #properly capitalize the sentence
end

puts pig_latin("Alfredo Loves Me")

