
-- If this file is run, this will remove the 

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


--[[

    REMOVING USERDATA.txt FILE:


    This file checks for a userDetails.txt file in the file explorer.

    If this file does find one, it will remove it.

    If there is no such thing called userDetails.txt there will be no change. There may of be an error that will appear.

]]