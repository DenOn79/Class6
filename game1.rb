tryNumber = ARGV[0].to_i 
answer = rand(10)
puts answer
puts "Let\'s play a little game. I have a number in my mind."
puts "You have only #{tryNumber} tries to guess my number!"

def checkInputValue(guess, answer)
    if guess == answer
        abort "Hmmm... Seems like you are right..."
    elsif guess > answer
        puts "Too much! Try a little less!"
    elsif guess < answer
        puts "Not enough! Try a little more!"
    end
end

def inputCheck(answer)
    print "Input number: "
    guess = STDIN.gets.chomp!
    
    numberCheck = guess.to_i
    stringCheck = numberCheck.to_s

    if stringCheck == guess
        checkInputValue(guess.to_i, answer)
    elsif guess.empty?
        puts "Come on, don't ignore me!"
    else
       puts "It must be a number, not a letter!" 
    end
    
end
    
(1 .. (tryNumber)).each do |i|
unless i == tryNumber
    print "This is your #{i} try! "
else
    print "This is your LAST try! Be carefull! "
end
inputCheck(answer)
end

