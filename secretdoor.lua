local password = "cleanRoom"
local entries = 0
local maxEntries = 3

io.write("Please enter the password.. ")
local pEntry = io.read()

while pEntry ~= password
do
    entries = entries + 1
        if entries >= maxEntries then
            print("Max attempts reached, exiting")
            sleep(2)
            print("Shutting down...")
            sleep(2)
            os.shutdown()
        end
    print("Incorrect, try again..")
    sleep(1)
    print(string.format("%d attempts remaining - ",(maxEntries - entries)))
    sleep(1)
    io.write("Please enter the password.. ")
    pEntry = io.read()
end
print("Access granted.")
rs.setOutput("back",true)
sleep(5)
rs.setOutput("back",false)
exit()
