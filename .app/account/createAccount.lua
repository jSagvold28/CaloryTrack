local function signup()

    print("Name: ")
    local userName« = io.read()

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

    print("Daily liquid intake: ")
    local dailyLiquidIntake = io.read()

    print("Daily water intake: ")
    local dailyWaterIntake = io.read()

    local file = io.open("userDetails.txt", "a")
    
    local userData = userName .. "," displayName ..  "," .. userAge .. "," .. userHeight .. "," .. userWeight .. "," .. dailyLiquidIntake .. "," .. dailyWaterIntake
    
    file:write(userData .. "\n")
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