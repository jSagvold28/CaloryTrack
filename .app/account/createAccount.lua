local function signup()

    print("Name: ")
    local userName = io.read()

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

    local userData = userName .. displayName .. userAge .. userWeight .. userWeight
    local displayData = userName .. displayName .. userAge
    local privateData = password .. userWeight .. userAge
    
    
    file:write(displayData .. "\n")
    file:close()

end
signup()

print("Sign up was completed!")


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

