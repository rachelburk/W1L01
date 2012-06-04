#Rachel Burkhoff
#Prehomework - Madlib
#5/29/12
#program asks user for different words then inputs 
#words given from user into the madlib
#and displays the story 

puts "Welcome to Madlibs!"

#seperation line 
20.times {
	print "-"
}
puts "\n"

#method asks user to input a word
#returns user input in variable 
def replace(blank)
	puts "Please enter a " + blank + ":"
	STDOUT.flush
	blank = gets.chomp
	puts "\n"
	return blank
end

madlib = "A new and (adj1) fairy princess movie is coming \n"\
"out soon. It will be about Snow (name) and the \n (number) "\
" dwarfs. Snow  (name)  is a princess whose \nbeauty threatens her "\
"(relative), the queen. Snow \n (name) is forced to flee from "\
"(place1) \nand hides in nearby (place2). There, she \ndiscovers"\
" the dwarfs (verb) in their \n(noun). But the queen finds "\
"her and casts a \n(adj2) spell on her. The dwarfs take care of "\
"her \nuntil the (adj3) (person) comes to rescue \nher, and they"\
" all live (adv) ever after!"

#calls method for each word and saves input from user into variables 

adj1= replace("adjective")
name= replace("name")
number= replace("number")
relative= replace("relative")
place1= replace("place")
place2= replace("place")
verb= replace("verb ending in ing")
noun = replace("plural noun")
adj2= replace("adjective")
adj3= replace("adjective")
person= replace("person")
adv= replace("adverb")




flag = true
while flag	
	flag = false 
	if madlib.include?("(adj1)")
		madlib['(adj1)'] = adj1
		flag = true 
	end 
	if madlib.include?("(name)")
		madlib['(name)'] = name
		flag = true 
	end 
	if madlib.include?("(number)")
		madlib['(number)'] = number
		flag = true 
	end 
	if madlib.include?("(relative)")
		madlib['(relative)'] = relative
		flag = true 
	end
	if madlib.include?("(place1)")
		madlib['(place1)'] = place1
		flag = true 
	end 
	if madlib.include?("(place2)")
		madlib['(place2)'] = place2
		flag = true 
	end 
	if madlib.include?("(verb)")
		madlib['(verb)'] = verb
		flag = true 
	end 
	if madlib.include?("(noun)")
		madlib['(noun)'] = noun
		flag = true 
	end 
	if madlib.include?("(adj2)")
		madlib['(adj2)'] = adj2
		flag = true 
	end
	if madlib.include?("(adj3)")
		madlib['(adj3)'] = adj3
		flag = true 
	end 
	if madlib.include?("(person)")
		madlib['(person)'] = person
		flag = true 
	end 
	if madlib.include?("(adv)")
		madlib['(adv)'] = adv
		flag = true 
	end 
end

#seperation line 
20.times {
	print "-"
}
puts "\n"

#prints out story using the input from user
puts "Pretty Princess\n" + madlib

