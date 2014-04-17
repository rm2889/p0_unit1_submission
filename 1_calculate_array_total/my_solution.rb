# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# 	Input is an array of numbers

# 	Input can be an array of strings or numbers

# What is the output? (i.e. What should the code return?)
# 	Outpus is a single number that represents their sum

# 	Output will be a string

# What are the steps needed to solve the problem?
=begin 
	Set runningTotal = 0
	FOR each element in input_array
		runningTotal = runningTotal + element
	END FOR
	return runningTotal
=end

=begin
	Set sentence = ""
	Set length = input_array.length
	Set i = 0
	WHILE i < length
		IF i = 0
			sentence += input_array[i].capitalize
		ELSE
			sentence += " " + input_array[i]
		END IF
		increment i by 1
	END WHILE
	sentence += "."
	return sentence
=end	

# 2. Initial Solution

def total (input_array)
	running_total = 0
	input_array.each { |x|
		running_total+=x
	}
	return running_total
end

def sentence_maker (input_array)
	sentence = ""
	length = input_array.length
	i = 0
	while i < length
		if i == 0
			sentence += input_array[i].to_s.capitalize
		else
			sentence += " " + input_array[i].to_s
		end
		i+=1
	end
	sentence += "."
	return sentence	
end


# 3. Refactored Solution
=begin
	I think the solution for total is pretty good - I really can't think of a better way to do this. Every variable declared
	has a purpose.

	The solution to sentence_maker can be a bit better but I'm not really sure - for instance, at every iteration of the loop 
	I'm checking if the index is the first index. Another way to implement this method could be I remove the first element of
	the array and store it in another variable -> like a pop or push or whatever that array method is, and then loop through
	the array without having to perform this if condition at every iteration. That might be less expensive computationally.
	
=end

# 4. Reflection 
=begin
	While implementing the second method, I encountered a couple of errors - the first one was handling number arguments, which
	didn't work with the + operator. Another mistake I made was getting my while condition to be while i < length - 1, where
	i should've done i < lenght or i <= length - 1



=end
