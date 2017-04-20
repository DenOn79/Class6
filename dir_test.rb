def Loop_Creating_Dir (answer)
        case answer
        when "y"
            Dir.mkdir("dirtest(copy)")
        when "n"
            abort "Good bye!"
        else
            until answer== "y" or answer== "n"
            print"Please choose yes or no:"
            answer= gets.chomp!.downcase
            end 
        end
    end

unless Dir.exist?("dirtest")
    Dir.mkdir("dirtest")
    else print "Directory exists. Create copy?(y/n): "
        choise=gets.chomp!.downcase
        Loop_Creating_Dir(choise)
end