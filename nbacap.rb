puts "What's the current cap?"
cap = gets.chomp.to_i
puts "Years experience?"
e = gets.chomp.to_i
puts "0 - Bird (5 yrs)"
puts "1 - Early Bird (4 yrs)"
puts "2 - Non-Bird or FA (4 yrs)"
puts "Select an ID..."
r = gets.chomp.to_i
puts "How long of a contract?"
years = gets.chomp.to_i

if r == 0 
  then 
    y = 5 
    n = 0.075
elsif r == 1
  then
    y = 4
    n = 0.075
elsif r == 2
  then
    y = 4
    n = 0.045
elsif r == 3
  then 
    y = 3
    n = 0.045
elsif r == 4
  then
    y = 2
    n = 0.045
else
  puts "Not a valid ID."
end
if e < 7 
  then exp = 0.25
elsif e > 6 and e < 10
  then exp = 0.30
elsif e > 9 
  then exp = 0.35
end 

m = (exp * cap) * n
max = ((exp*cap) * y) + (m * y)
money = ((exp*cap) * years) + (m * years)
puts "This player can sign for up to #{y} years and #{max} million dollars."
puts "With a #{years} year contract, this player would earn #{money} million dollars."



