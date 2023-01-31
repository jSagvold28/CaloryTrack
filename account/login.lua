local function login()

    print("Enter your name: ")
    local userName = io.read()

    print("Password")
    local password = io.read()

    local file = io.open("users.txt", "r")
    for line in file:lines() do
        local data = string.split(line, ",")
        if data[1] == name and data[2] == age then
            file:close()

            return true
    end
    file:close()
    return false
end
login()