//
//
// 	  Ruby Basics Pragtob
//
//

## Comments

# This is an example comment

## Variables

variable = some_value

name = "Tobi"
name # => "Tobi"

sum = 18 + 5
sum # => 23

## Console puts

puts something

puts "Hello World"
puts [1, 5, "mooo"]

## Call a method

object.method(args)

string.length
array.delete_at(2)
string.gsub("ae", "ä")

## Define a method

def name(parameter)
	#method body
end

def greet(name)
	puts "Hi there " + name
end

## Equality

object == other

true == true # => true
3 == 4 # => false
"Hello" == "Hello" # => true

## Inequality

object != other

true != true # => false
3 != 4 # => true

## Decisions with if

if condition
	# happens when true
else
	# happens when false
end

if input == password
	grant_access
else
	deny_access
end

## Constants

CONSTANT = some_value

PI = 3.1415926535

## Strings

'This is a string'
'This is a string with an #{expression}'

example = 'This is another string'
example.length

## Concatentation

string + string2
"Hello " + "reader"

## Substitute

string.gsub(a_string, substitute)
"Bill".gsub("ill", "oo")
# => "Boo"

## String Access

string[position] "Hello"[1] # => "e"

## Arrays

[contents]

[]	# empty array
["Rails", "fun", 5]

array.size

[].size # => 0
[1,2,3].size # => 3
["foo", "bar"].size # => 2

array[position]

## add an array element

array << element

array = [1,2,3]
array << 4
array # => [1,2,3,4]
array[4] = 5

array.delete_at(i)

array.each do |e| .. end

persons.each do |p|
	puts p.name
end

numbers.each do |n|
	n = n * 2
end

## Hashes

Hashes associate a key to some value. You may then retrieve the value based upon its key. This construct is called a dictionary in other languages, which is appropriate because you use the key to "look up" a value, as you would look up a definition for a word in a dictionary. Each key must be unique for a given hash but values can be repeated.

Hashes can map from anything to anything! You can map from Strings to Numbers, Strings to Strings, Numbers to Booleans... and you can mix all of those! Although it is common that at least all the keys are of the same class. Symbols are especially common as keys. Symbols look like this: :symbol. A symbol is a colon followed by some characters. You can think of them as special strings that stand for (symbolize) something! We often use symbols because Ruby runs faster when we use symbols instead of strings.

{key => value}
{:hobby => 'programming'}

{42 => 'answer', 'score' => 100, :name => 'Tobi'}

hash[key]

hash = {:key => 'value'}
hash[:key] # =>  'value'
hash[foo] # => nil

hash[key] = value

hash = {:a => "b"}
hash[:key] = "value"
hash # => {:a=>b, :key=>"value"}

hash.delete(key)
hash = {:a => 'b', :b => 10}
hash.delete(:a)
hash # => {:b=>10}



//
//
// 	  Ruby Basics
//
//

Interactive environment: irb (in the terminal)

puts "hello world!"

// mathematics

3**2 // this means three to the square of two
Math.sqrt(a+b)	// this is a static method

// methods

def hi
	puts "Hello World!"
end

- if the method does not take parameters, then you do not need to define the curly braces

// classes

class Greeter
	attr_accessor :name
	def initialize(name = "World")
		@name = name
	end
	def say_hi
		puts "Hi #{@name}!"
	end
	def say_bye
		puts "Bye #{@name}, come back"
	end
end

greeter = Greeter.new("Pat")

# Using attr_accessor defined two new methods for us, name to get the value, and name= to set it.

LOOPING

@names.each do |name|
  puts "Hello #{name}!"
end

# Say bye to everybody
def say_bye
  if @names.nil?
    puts "..."
  elsif @names.respond_to?("join")
    # Join the list elements with commas
    puts "Goodbye #{@names.join(", ")}.  Come back soon!"
  else
    puts "Goodbye #{@names}.  Come back soon!"
  end
end
