local password = "cleanRoom"

io.write("Please enter the password: ")
local pInput = io.read()
repeat
    if pInput ~= password then
            io.write("Incorrect. Please try again")
end
until (pInput==password)
redstone.setOutput("back",true)
sleep(10)
redstone.setOutput("back",false)
