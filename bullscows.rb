possible = ("0000".."9999").to_a.find_all { |list| list.chars.uniq.count == 4}

puts "Total numbers: #{possible.size}"

while possible.size > 1 do

 	puts "Please enter number"
		suggest = gets 
	puts "How many bulls?"
		bullsnumber = gets.to_i 
	puts "And how many cows?"
		cowsnumber = gets.to_i

		bulls = possible.find_all{ |actual| suggest.chars.zip(actual.chars).count { |list| list.uniq.count == 1 } == bullsnumber } 
		possible = bulls.find_all{ |actual| (actual.chars & suggest.chars).count == cowsnumber + bullsnumber }

	puts "Possible numbers: #{possible.size}"

	p possible
 		     	end
