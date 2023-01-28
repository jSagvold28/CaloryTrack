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
    print("Food consumed ".. food)
    print("Quantity of food: ".. Quantity)
    print("Total calories consumed: " .. calories)

    print("Save to confirm to create a text file.")

    if input == "save" then
        local file = io.open("foodLog.txt", "a")
        file:write(food .. " " .. Quantity .. " " .. calories .. "\n")
        file:close()
        print("Data saved to food_log.txt.")

    end
end


local function resetCalorieCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        calorieCount = 0

    end
end


local function logWater()

    io.write("Beverage: ")
    local Beverage = io.read()

    io.write("How many ounces: ")
    local ounces = io.read()


end


while true do

    local input = io.read()

    if input == "log" then
        logFood()

    elseif input == "water" then
        logWater()

    elseif input == "" then
        

    end
end
