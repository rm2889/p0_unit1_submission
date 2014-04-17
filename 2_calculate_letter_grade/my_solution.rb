# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# 	Array of numbers
# What is the output? (i.e. What should the code return?)
# 	a single letter
# What are the steps needed to solve the problem?

=begin
	same pseudocode as total in the last exercise, except in this case 
	convert the sum to float and divide by the length to get average

	Set average = total/input_array.length
	IF average >= 90
		grade = "A"
	ELSE IF average >= 80
		grade = "B"
	...
	ELSE 
		grade = "F"
	end
=end

# 2. Initial Solution

def get_grade (input_array)
	running_total = 0
	input_array.each { |x|
		running_total+=x
	}
	average = running_total.to_f/input_array.length
	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	elsif average >= 50
		return "E"
	else 
		return "F"
	end
end




# 3. Refactored Solution


# 4. Reflection 
#  I looked for an in built array function that could calculate the average, only to remember how simple the calculation is!