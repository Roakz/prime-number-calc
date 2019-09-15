# Primes class which contains methods to list the prime numbers in a range that is specified
class Primes
attr_reader  :odds, :element

  # This method makes an array of odd numbers from a range of 2 up until the user selected max
  def odds(max)
    @odd = []
    @arr = (2..max).to_a

    # The array odds is created with all the odd numbers in the range as elements
    @arr.each do |var|
      if var % 2 != 0
       @odd << var
      end
    end
   return @odd
  end
  
   # The odds array is composed into element method as @arr
   # A variable @arr_ele is set to 0 to be used as the index of the array
  def element(array)
    @arr = array
    p @arr
    @arr_ele = 0

    # Creating a while loop to iterate over until the element of the array is grester than 10
    # This means that its greater than the square root of 100

    # This is done because this calculator only works for the primes of 1-100 to fix this i would need to 
    # review this logic and change it to the square root of whatever the max of the range is!!

    while  @arr[@arr_ele] < 10

      # Iterating the array and checking if each element is divisible by @arr_ell and if it isnt then its printed
      # This is for testing Purposes!!!!! 
      # @arr.each do |var|
      #   if var % @arr[@arr_ele] == 0
      #   p var
      #   end
      # end

      # Checking each elment to see if its divisible by the first element and then deleted if it is
      # except for the first element as its needed
      @arr.delete_if {|var| var != @arr[@arr_ele] && var % @arr[@arr_ele] == 0 }

      #adds 1 to our element variable to repeat the process
      @arr_ele += 1 
    end 
    p @arr
  end
  
    
end

#creating an instance of Primes and composing the odds method into the element method to provide an output of all 
# prime numbers up to 100
primes = Primes.new
primes.element(primes.odds(100))


  
