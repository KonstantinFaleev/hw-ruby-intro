# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements.
  # For an empty array it should return zero.
  arramount=0
  for x in arr
    arramount+=x
  end
  return arramount
end

def max_2_sum arr
  # Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements.
  # For an empty array it should return zero. For an array with just one element, it should return that element.
  if arr.size==0
    return 0
  elsif arr.size==1
    return arr[0]
  else
    number1=arr[0]
    number2=arr[1]
    x=2
    while x<arr.size
      if(number1<number2)
        if(arr[x]>number1)
          number1=arr[x]
        end
      else
        if(arr[x]>number2)
          number2=arr[x]
        end
      end
      x=x+1
    end
  end
  return number1+number2
end

def sum_to_n? arr, n
  # Define a method sum_to_n?(array, n) that takes an array of integers and an additional
  # integer, n, as arguments and returns true if any two elements in the array of integers
  # sum to n. sum_to_n?([], n) should return false for any value of n, by definition.
  for x in 0...arr.size
    for y in 0...x
      if(arr[x]+arr[y]==n)
        return true
      end
    end
  end
  if(arr.size==0 and n==0)
    return false
  end
  return false
end

# Part 2

def hello(name)
  # Define a method hello(name) that takes a string representing a name and returns the string "Hello, "
  # concatenated with the name.
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant
  # and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it
  # works for both upper and lower case and for nonletters!
  if s=~/^[^aeiouAEIOU]/
    if(s =~ /^[a-zA-Z]/)
      return true
    end
    return false
  else
    return false
  end
end

def binary_multiple_of_4? s
  # Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary
  # number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
  if(s =~ /^[1|0]*$/)
    if(s.end_with?('00') || s=='00' || s=='0')
      return true
    end
    return false
  else
    return false
  end
end
end

# Part 3

class BookInStock
# Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as
# a floating-point number, price, as attributes.
  def initialize(isbn,price)
    if(isbn.empty? || price<=0)
      raise ArgumentError ,'Argument Error'
    end
    @isbn =isbn
    @price =price
  end
  attr_accessor:isbn
  attr_accessor:price
  def price_as_string
    return '$'+'%.2f' % price
  end
end
