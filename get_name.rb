print "Input name: "
name= gets.chomp!.downcase
        unless File.exist?("#{name}.txt")
            File.new("#{name}.txt","w+")
        else abort "File #{name}.txt exists"
end
    