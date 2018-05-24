function Alarm(alarm)
	if alarm.endT == nil then
		alarm.endT = 0
	end
	
	if alarm.endT == 0 then
		alarm.endT = os.clock() + alarm.time
	elseif os.clock() >= alarm.endT then
		print(os.clock() - alarm.endT)
		if alarm.name ~= nil then
			print("DEFCHAT:ALARM_FIRED: " .. alarm.name)
		end
		alarm.endT = 0
		return true
	end
end