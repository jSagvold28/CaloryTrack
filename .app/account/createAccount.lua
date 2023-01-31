local function signup()

    print("Name: ")
    local firstName = io.read()

    print("User Name:")
    local displayName = io.read()

    print("Password:")
    local password = io.read()

    print("Age: ")
    local userAge = io.read()

    print("Height: ")
    local userHeight = io.read()

    print("Weight: ")
    local userWeight = io.read()

    print("")
    print("Non-essental information, you can skip")
    print("")


    print("Daily liquid intake: ")
    local dailyLiquidIntake = io.read()

    print("Daily water intake: ")
    local dailyWaterIntake = io.read()

    print("Total active minuites (per day): ")
    local activeMoveMinutesPD = io.read()

    print("Total steps per day: ")
    local totalStepsPD = io.read()

    local file = io.open("userDetails.txt", "a")

    local userData = firstName .. displayName .. userAge .. userWeight .. userWeight
    local displayData = userName .. displayName .. userAge
    local privateData = password .. userWeight .. userAge
    
    
    file:write(displayData .. "\n")
    file:write(userData)
    file:close()

    print("")
    print("Is this the information that you want to use for your account?")
    print("Type 'yes' if you would like to create your account with the provided data.")
    print("")
    
    print(userData)

    local input = io.read()

    if input == "yes" then

        print("Signup was completed! Welcome to the CaloryTrack team!")
        
    else
        print("Ok, we wont")

    end
end
signup()



local function fetchUserDetails()

    print(userName)
    print(displayName)

    print("Wondering where the other details are? Please check the userDetails.txt file.")

end
fetchUserDetails()

local function deleteUserLog()

    local input = io.read()

    if input == "!del" then
        local files = io.popen("ls *.txt") 
        local fileList = files:read("*all") 

        files:close()
        
        for file in string.gmatch(fileList, "%S+") do 

            os.remove(file) -- Use the os.remove() function to delete each file

        end

        print("User data files, have been kicked off the server.")
    end
end
deleteUserLog()

