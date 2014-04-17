# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# The input is an array

# What is the output? (i.e. What should the code return?)
# The output is an element of that array which is the middle most element

# What are the steps needed to solve the problem?
=begin
	sort input_array
	Set length as length of input_array
	IF length % 2 = 0
		even number of elements, so return average(input_array[length/2], input_array[(length/2)+1])
	ELSE
		return input_array[(length+1)/2]
	END IF
=end

# 2. Initial Solution

def median(input_array)
	input_array.sort!
	length = input_array.length
	if length % 2 == 0
		return (input_array[(length/2)-1]+input_array[(length/2)])/2.0
	else
		return input_array[((length+1)/2)-1]
	end
end


# 3. Refactored Solution

def median(input_array)
	input_array.sort!
	length = input_array.length
	if length % 2 == 0
		even_index_1 = (length/2)-1
		even_index_2 = (length/2)
		return (input_array[even_index_1]+input_array[even_index_2])/2.0
	else
		odd_index = ((length+1)/2)-1
		return input_array[odd_index]
	end
end

# 4. Reflection 
=begin
	It makes a lot more sense to have separate variables for the indices, as putting them in the return statement in their raw form
	was not very readable.
	Also, I need to keep an eye out for errors that I tend to make with array indices and the length, as indices start out at 0 and 
	the last index is length-1
	I find it tedious to type out the pseudocode - I don't think i'm quite following the format prescribed exactly, but hopefully I'll
	pay more attention to it once the simple programs are done with and harder stuff gets here
=end