def Loop_Creating_Copy (answer)
        case answer
        when "y"
            Dir.mkdir("dirtest(copy)")
        when "n"
            abort "Good bye!"
        else
            until answer== "y" or answer== "n"
            print"Please choose yes or no:"
            second_answer= gets.chomp!.downcase
                if second_answer== "y"
                        Loop_Creating_Copy(second_answer)
                        abort "Directory was created"
                elsif second_answer== "n"
                        abort "Good Bye now!"
                else abort "Please be careful"
                end
            end 
        end
    end

unless Dir.exist?("dirtest")
    Dir.mkdir("dirtest")
    else print "Directory exists. Create copy?(y/n): "
        choise=gets.chomp!.downcase
        Loop_Creating_Copy(choise)
end