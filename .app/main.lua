local function logFood()

    io.write("Enter the food that you ate: ")
    local food = io.read()

    io.write("Quantity: ")
    local Quantity = io.read()

    io.write("Enter the amount of calories that that food had: ")
    local calories = io.read()

    calorieCount = calorieCount + tonumber(calories)

    -- Print the results

    print("Food consumed ".. food)
    print("Quantity of food: ".. Quantity)
    print("Total calories consumed: " .. calorieCount)

end


local function resetCalorieCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        calorieCount = 0

    end
end


local function fetchTotalCalories( ... )
    -- body
end


while true do

    local input = io.read()

    if input == "log" then
        logFood()

    elseif input == "" then

    end
end
