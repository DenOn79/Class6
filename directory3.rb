def Directory_create(directory)
    unless Dir.exist?(directory)
        Dir.mkdir(directory)
        puts "Directory #{directory} was made"
        Dir.chdir(directory)
    else print "Directory #{directory} exists. Do you want to make a copy? y/n: "
        answer= gets.chomp!.downcase
        case answer
        when 'y'
            Directory_create(directory + '(copy)')
        when 'n'
            abort "Good bye!"
        else
            abort "Don't understand"
        end
    end
end

path= File.read("path2.txt")
dir_name=path.split("/")
depth= dir_name.count

for i in 0 .. (depth-2)
    Directory_create(dir_name[i])
end

file_name=dir_name[depth-1]
File.new(file_name, "w+")


