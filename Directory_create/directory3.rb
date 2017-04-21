def Counter count
return count.next
end

def Directory_create directory, num
    unless Dir.exist?(directory)
        Dir.mkdir(directory)
        puts "Directory #{directory} was made"
        Dir.chdir(directory)
    else
        name = directory.split(".")[0]
        index = "." + Counter(num).to_s
        Directory_create(name + index, num.next)
    end
end

path= File.read("path3.txt")
dir_name=path.split("/")
depth= dir_name.count

(0 .. (depth-2)).each do |i|
    Directory_create(dir_name[i], 0)
end

file_name=dir_name[depth-1]
File.new(file_name, "w+")


