path= File.read("path.txt")
puts path
dir_name=path.split("/")
depth= dir_name.count
puts depth

for i in 0 .. (depth-2)
    Dir.new(dir_name[i])
    Dir.chdir(dir_name[i])
end

file_name=dir_name[depth-1]
File.new(file_name, "w+")
