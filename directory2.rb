def Directory_create(directory)
    unless Dir.exist?(directory)
        Dir.mkdir(directory)
        puts "Directory #{directory} was made"
    else abort "Directory #{directory} exists."
    end
end

path= File.read("path2.txt")
#puts path
dir_name=path.split("/")
depth= dir_name.count
#puts depth


for i in 0 .. (depth-2)
    Directory_create(dir_name[i])
    Dir.chdir(dir_name[i])
end

file_name=dir_name[depth-1]
File.new(file_name, "w+")
