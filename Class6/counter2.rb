def Counter (num)
count = num
count = count+1
return count
end

num=0
puts Counter(num)
num= Counter(num)
puts Counter(num)
num= Counter(num)
puts Counter(num)

=begin
for i in 1 .. 3
    step= i
puts "#{Counter(step)}"
a= Counter(step)
end
puts a
=end