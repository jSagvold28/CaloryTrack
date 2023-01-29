local function logFood()

    io.write("Enter the food that you ate: ")
    local food = io.read()

    io.write("Quantity: ")
    local Quantity = io.read()

    io.write("Enter the amount of calories that that food had: ")
    local calories = io.read()

    -- calorieCount = calorieCount + tonumber(calories)

    print("To confrim this is what you inputted: ")
    print("")
    print("Food consumed: ".. food)
    print("Quantity of food: ".. Quantity)
    print("Total calories consumed: " .. calories)

    print("Save to confirm to create a text file.")

    local input = io.read()
    if input == "save" then
        local file = io.open("Food Log File.txt")
        file:write(food)
        file:write(Quantity)
        file:write(calorieCount)

        file:close()
        
        print("Food log created!")
        print("")

    else 
        print("File not created.")
        print("Error saving the food log file, please try again!")
        print("")


    end
end


resetWaterCount()

local function logWater()
    io.write("Beverage: ")
    local Beverage = io.read()

    io.write("How many ounces: ")
    local ounces = io.read()

    local input = io.read()

    if input == "save" then
        local file = io.open("Water log file.txt", "w")

        file:write(Beverage)
        file:write(ounces)

        file:close()

        print("Water log created!")
        print("")
    else 
        print("Error saving the water log file please try again")
        print("")
    end
end


local function logWorkout()
    io.write("Workout: ")
    local workout = io.read()

    io.write("Type of workout: ")
    local type = io.read()

    io.write("Duration of workout: ")
    local Duration = io.read()

    io.write("Total calories burnt: ")
    local burt = io.read()

    io.write("Total steps: ")
    local steps = io.read()

    io.write("In the zone: ")
    local zone = io.read()


    print("Generating workout report...")
    os.execute("sleep 1.11555")

    local file = io.open("Workout_Report.txt", "w")

    file:write(type .. "\n")
    file:write(Duration .. "\n")
    file:write(burt .. "\n")
    file:write(steps .. "\n")
    file:write(zone .. "\n")

    file:close()

    print("File has been generated! Check the explorer on the left-hand side.")
    print("If you do not see the .txt file, there was an error that occured.")
    print("")
end


local function fetchTotalCalories()
    print(totalCalories)
end

local function fetchTotalCarbs()
    print(carbCount)
end

local function fetchTotalWater()
    print(totalWaterCount)
end 

local function logSleep()

    io.write("Duration of Sleep: ")
    local sleep = io.read()

    io.write("Quality of Sleep: ")
    local qualityOfSleep = io.read()

    io.write("Any wakeups: ")
    local wakeups = io.read()

    io.write("Trouble sleeping: ")
    local troubleSleeping = io.read()

    io.write("Bed time: ")
    local bedTime = io.read()

    io.write("Wakeup time: ")
    local wakeupTime = io.read()

    local input = io.read()

    if input == "save" then

        local file = io.open("sleep from" .. os.date("%m_%d_%y"))

        if not file then

            print("Error opening file")
            print("")

            return
        end

        file:write(sleep, "n")
        file:write(qualityOfSleep)
        file:write(wakeups)
        file:write(troubleSleeping)
        file:write(bedTime)
        file:write(wakeupTime)

        file:close()
        print("Data saved to file successfully")
    end
end


local function fetchApplicaitonCommands()

    print("CaloryTrack commands: ")
    print("")
    print("'food' - logs a food item")
    print("'liquid' - logs a liquid item")
    print("'sleep' - logs a night of sleep")
    print("'comands' - shows all CaloryTrack commands")
    print("")
end


while true do

    print("CaloryTrack commands: ")
    print("")
    print("'food' - logs a food item")
    print("'liquid' - logs a liquid item")
    print("'sleep' - logs a night of sleep")
    print("'comands' - shows all CaloryTrack commands")
    print("")

    local input = io.read()

    if input == "food" then
        logFood()

    elseif input == "liquid" then
        logWater()

    elseif input == "workout" then
        logWorkout()


    elseif input == "sleep" then
        logSleep()

    elseif input == "commands" then
        fetchApplicaitonCommands()

    end
end


-- Reset count functions:

local function resetCalorieCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        calorieCount = 0

    end
end
resetCalorieCount()

local function resetCarbCount()
    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        carbCount = 0
    end
end
resetCarbCount()

local function resetWaterCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        totalWaterCount = 0
    end
end