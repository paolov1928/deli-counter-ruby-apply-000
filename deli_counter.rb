# Write your code here.

#1. Build the `line` method that shows everyone their current place in the line. If there is nobody in line, it should say `"The line is currently empty."`.


def line(input)
  if input == []
    puts "The line is currently empty."
  else
    puts "The line is currently: "+input.map.with_index { |person,index| "#{index+1}. #{person}" } .join(" ")
  end
end
#quite pleased with this and i feel is actually more succinct than the solution given. Didnt realise that if you add a 1 in brackets (as the argument to .with index) will add 1 to all indexes.

#. Build a method that a new customer will use when entering the deli. The `take_a_number` method should accept two arguments, the array for the current line of people (`katz_deli`), and a string containing the name of the person joining the end of the line. The method should call out (`puts`) the person's name along with their position in line. **Top-Tip:** *Remember that people like to count from* `1`*, not from* `0` *("zero") like computers.*


def take_a_number(katz_deli)
    counter = katz_deli.length 
    puts "Welcome, #{new_person}. You are number #{lengths} in line."
end

#Solution from !Solution - More refactored
#def take_a_number(deli, name)
  #deli << name
  #puts "Welcome, #{name}. You are number #{deli.length} in line."
#end


#3. Build the `now_serving` method which should call out (i.e. `puts`) the next person in line and then remove them from the front. If there is nobody in line, it should call out (`puts`) that `"There is nobody waiting to be served!"`.

def now_serving(katz_deli)
   if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift()
  end
end

#From solution didnt realise could just call #.first which is the same as the index call i used. Or that .shift does not need the brackets. 