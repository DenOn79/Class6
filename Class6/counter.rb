def Counter (num)
count = 0
num.times do
puts "this is the count #{count}"
count = count+1
end
end

print "Input number of steps: "
steps= gets.chomp!.to_i
Counter (steps)