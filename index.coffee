
timestamp = ->
	+new Date * 0.001 | 0

getSeconds = (timeStr)->
	return 0 unless timeStr?
	units =
		secs: 1
		sec: 1
		s: 1
		mins: 60
		min: 60
		m: 60
		hours: 3600
		hour: 3600
		h: 3600
		days: 86400
		day: 86400
		d: 86400
	[_,time,unit] = timeStr.match /([0-9.]+)([a-z]+)/i
	if unit of units
		units[unit] * parseFloat time
	else
		0

delay = (time, call)->
	if typeof time is 'string'
		time = 1000 * getSeconds time
	runner = -> call (-> setTimeout runner, time)
	setTimeout runner, time

exports.timestamp = timestamp
exports.getSeconds = getSeconds
exports.delay = delay
