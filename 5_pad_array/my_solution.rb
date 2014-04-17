# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# Two inputs - first input is the new size of the array, second input is an optional input that represents the new added value in the array
# so new_size and optional new_value

# What is the output? (i.e. What should the code return?)
# an array of the new size

# What are the steps needed to solve the problem?
=begin
def pad

Set new_array = self.dup
IF length < new_length
	extra_elements = new_length - length
	IF (new_value)
		new_array += Array.new(extra_elements,new_value)
	ELSE
		new_array += Array.new(extra_elements,nil)
	END IF
END IF
return new_array


def pad!
IF length < new_length
	extra_elements = new_length - length
	IF (new_value)
		self += Array.new(extra_elements, new_value)
	ELSE
		self += Array.new(extra_elements, nil)
	END IF
END IF
return self



=end

# 2. Initial Solution
class Array
	def pad(new_length, new_value = nil)
		new_array = self.dup
		if length < new_length
			extra_elements = new_length - length
			if (new_value)
				new_array += Array.new(extra_elements,new_value)
			else
				new_array += Array.new(extra_elements,nil)
			end
		end
		return new_array
	end


	def pad!(new_length, new_value = nil)
		if length<new_length
			extra_elements = new_length-length
			if (new_value)
				self.push(Array.new(extra_elements,new_value))
			else
				self.push(Array.new(extra_elements,nil))
			end
		end
		return self
	end
end




# 3. Refactored Solution

class Array
	def pad(new_length, new_value = nil)
		new_array = self.dup
		if length < new_length
			extra_elements = new_length - length
			new_array += Array.new(extra_elements,new_value)
		end
		return new_array
	end


	def pad!(new_length, new_value = nil)
		if length<new_length
			extra_elements = new_length-length
			self.push(Array.new(extra_elements,new_value))
		end
		return self
	end
end


# 4. Reflection 

=begin
The biggest problem I faced was not knowing how to write a class method in ruby; in this case a class method for a an array.
Another problem was using self+= in the destructive version of the task, which threw the error - "Can't change the value of self"
As it turns out that only a method call can change self, and self can't be changed from assignment!
=end
