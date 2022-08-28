turtle.select(1)
turtle.down(8)

rednet.open("left")
rednet.broadcast("Hello from the farmturtle","farmturtle")

while true do
	print(turtle.getFuelLevel())
	if turtle.getFuelLevel() <= 10 then
		if turtle.getItemCount(16) <= 1 then
			print("WARNING! Fuel level low!")
			print("Please put fuel to slot 16")
			rednet.broadcast("Fuel level is LOW","farmturtle")
		end
	end

	turtle.select(16)
	turtle.refuel()

	if turtle.getItemCount(1) <= 0 then
		print("Seed check failed")
		print("Please put seeds to slot 1")
		rednet.broadcast("Seed check has failed","farmturtle")
	end

	if turtle.getItemCount(2) <= 0 then
		print("Bonemeal check failed")
		print("Please put bonemeal to slot 2")
		rednet.broadcast("Bonemeal check has failed","farmturtle")
	end

	turtle.select(1)
	turtle.dig()
	turtle.place()
	
	sleep(1)

	turtle.select(2)
	turtle.place()
	turtle.place()
	turtle.place()
	turtle.place()

	sleep(1)
end
