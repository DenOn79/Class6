
=begin
power_array = -> (power, array_size) do 
    1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size) 
end

print power_array.(2 , 4)    #[1, 4, 9, 16]
puts
print power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts
print power_array.(3, 5)     #[1, 8, 27, 64, 125]
puts
=end

#=begin
require 'mathn'
array_size = gets.to_i
palprime_array = -> (array_size) do
    2.upto(Float::INFINITY).lazy.map { |x| (2 .. x).select{|y|x%y==0} }.first(array_size)
end

print palprime_array.(array_size)
puts
#=end