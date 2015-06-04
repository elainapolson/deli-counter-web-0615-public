# Write your code here.

# The method, take_a_number, should accept the 
# current line of people, katz_deli, along with 
# the new person's name, and tell them their position in line.


def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  return katz_deli
end 

def now_serving(katz_deli)
  if katz_deli.length >= 1
    puts "Currently serving #{katz_deli.shift}."
  else 
    puts "There is nobody waiting to be served!"
  end
end 

def line(katz_deli)

  if katz_deli.length >= 1
    to_put = "The line is currently:"
    
    katz_deli.each do |name|
      to_put += " #{katz_deli.index(name)+1}. #{name}"
    end
    
    puts to_put
  else
    puts "The line is currently empty."
  end
end 