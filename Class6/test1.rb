def convert_temp(temp, system)

  case system
    when 'c', 'C'
      temp_convert =  9.0/5.0*temp.to_f+32
      temp_system = 'F'
    when 'f', 'F'
      temp_convert = 5.0/9.0*(temp.to_f-32)
      temp_system = 'C'
    else
      temp_convert = 0.0
      temp_system =''
  end
  return "Temperature is #{temp_convert.round(2)} #{temp_system}"
end

a= File.read("data.txt").gsub(" ", "")
puts a
value= a.split(",")
b= value.count

for i in 0 .. (b-1)
    num= value[i].chop
    sign= value[i][value[i].length-1]   
    puts num + sign.upcase
    puts convert_temp(num, sign)   
end
