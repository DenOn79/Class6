begin
    begin
print "Input data: "
data= gets.upcase.chomp!
if data.empty?
    puts "Input is empty!"
end
end while data.empty?
value, sign= data.split(" ")
float= value.to_f
if sign.nil?
    puts "Forgot to type the letter or to put the breakspace between."
elsif sign== 'C'
    convert= 32+ 1.8*float
    puts "In Farenheit it is #{convert} degrees."
elsif sign== 'F'
    convert= (float-32)/1.8
    puts "In Celsium it is #{convert} degrees."
else
    puts "#{sign} is wrong letter. Only C for Celsium or F for Farenheit."
end
end while sign.nil? or !(sign== 'C') and !(sign== 'F') 