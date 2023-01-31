
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