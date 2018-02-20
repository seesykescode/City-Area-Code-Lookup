$area_code = {
    "Los Angeles": 323,
    "Los Vegas": 702,
    "Seattle": 206,
    "Atlanta": 404,
    "Athens": 706,
}

def prompts

city = ""
input_found = false

puts "Welcome to the city lookup program, please enter an area code. You can quit the program by typing exit"
input = gets.chomp

puts "You entered #{input}, is that correct? (y/n)"
confirm = gets.chomp

while confirm.downcase === "n"
    puts "Please enter an area code..."
    input = gets.chomp

    puts "You entered #{input}, is that correct? (y/n)"
    confirm = gets.chomp
end

begin 
    valid_number = Integer(input)
    puts "Searching for city matching area code..."

    # Loop through the area code hash
    # search each element of hash, checking to see if the value of the key = the input
    # return the key that equals the input


    $area_code.each do |key, value|
       if value === valid_number
        city = key
        input_found = true
       end
    end

    if !input_found
       puts "Couldn't find a city matching area code in the database, would you like to try another area code? (y/n)"
       continue = gets.chomp

        if continue.downcase === 'y'
            prompts
        else
           puts "Program closing..." 
        end
    end

    if input_found
       puts "The city that matches the area code is #{city}, would you like to try another area code? (y/n)"
       continue = gets.chomp

        if continue.downcase === 'y'
            prompts
        else
           puts "Program closing..." 
        end
    end

    

rescue ArgumentError, TypeError
    puts "Invalid input for area code. Please make sure the area code is a number"
end

end

prompts

