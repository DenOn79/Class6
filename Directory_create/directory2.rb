def Directory_create(directory, num)
    unless Dir.exist?(directory)
        Dir.mkdir(directory)
        puts "Directory #{directory} was made"
        Dir.chdir(directory)
    else
        Copy_Directory_create(directory, num)
    end
end

def Counter count
return count.next
end

def Copy_Directory_create(directory, num)
    print "Directory #{directory} exists. Do you want to make a copy? y/n: "
        answer= gets.chomp!.downcase
        case answer
        when 'y'
            name = directory.split(".")[0]
            index = "." + Counter(num).to_s
            Directory_create(name + index, num.next)
        when 'n'
            abort "Good bye!"
        else
            Wrong_Letter_Picked(answer, directory, num)
        end
end

def Wrong_Letter_Picked(answer, directory, num)
    until answer== "y" or answer== "n"
            print"Please choose yes or no:"
            second_answer= gets.chomp!.downcase
                case second_answer
                when 'y'
                        Copy_Directory_create(directory, num)                       
                when 'n'
                        abort "Good Bye now!"
                else
                    Wrong_Letter_Picked(second_answer, directory, num)
                end
            end
end

path= File.read("path2.txt")
dir_name=path.split("/")
depth= dir_name.count

(0 .. (depth-2)).each do |i|
    Directory_create(dir_name[i], 0)
end

file_name=dir_name[depth-1]
File.new(file_name, "w+")