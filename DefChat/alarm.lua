local time = 0

function Alarm(alarm)
	if time == 0 then
		time = os.clock() + alarm.time
	elseif os.clock() >= time then
		print(os.clock() - time)
		if alarm.name ~= nil then
			print("DEFCHAT:ALARM_FIRED: " .. alarm.name)
		end
		time = 0
		return true
	end
end