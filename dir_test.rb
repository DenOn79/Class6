unless Dir.exist?("dirtest")
    Dir.mkdir("dirtest")
    else puts "Directory exists. Create copy?(y/n): "
        answer=gets.chomp!.downcase
        case answer
        when "y"
            Dir.mkdir("dirtest(copy)")
        when "n"
            puts "Good bye!"
        else
            puts "wrong answer."
        end
end