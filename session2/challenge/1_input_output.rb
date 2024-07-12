# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  puts 'Enter two numbers seperated by a space: '
  input = $stdin.gets.chomp
  x, y = input.split[0].to_i, input.split[1].to_i
  sum = x + y
  difference = x - y 
  product = x * y
  print "#{sum}\n#{difference}\n#{product}"
end
