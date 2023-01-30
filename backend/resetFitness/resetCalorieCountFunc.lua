local function resetCalorieCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        calorieCount = 0

    end
end
resetCalorieCount()
