colors = "RRGGBBYY"
color_array = colors.split('') #split each individual character

1.upto(20) do |i|
	replace = color_array.shift
	color_array = color_array << replace
	colors = color_array.join
	puts colors
end
