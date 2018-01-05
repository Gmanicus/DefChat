created = true
trigger = false
tick = 0
originTime = 0
once = false
function alarm(time,list,loop)
	if list[4] == nil then
		list[4] = created
		list[3] = tick
		list[2] = originTime
		list[1] = trigger
		print("Alarm Created In: " .. list[5])
	end
	check(time,list,loop)
end

function check(time,list,loop)
	if list[2] == 0 then
		list[1] = false
		list[2] = os.clock()
		list[3] = list[3] + 1
	end
	if loop == true then
		repeat
			if os.clock() - list[2] >= time then
				list[1] = true
				list[2] = 0
			end
		until list[1] == true
	elseif os.clock() - list[2] >= time then
		list[1] = true
		list[2] = 0
	end		
end