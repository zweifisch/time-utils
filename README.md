# time-utils

`setTimeout` is not coffeescript friendly, so here is the replacement

install using npm
```sh
npm install time-utils
```

## usage

```coffee
{delay} = require 'time-utils'

delay 1000, ->
	console.log '1 second passed'
```

### bonuses

readable time
```coffee
delay '5s', ->
	console.log '5 seconds passed'
```

run every 2.5 hours
```coffee
delay '2.5h', (repeat)->
	console.log '2.5 hours passed'
	unless somethingwrong()
		repeat()
```

unix timestamp
```coffee
{timestamp} = require 'time-utils'
console.log "timestamp now: #{timestamp()}"
```

### supported format

```
s|second|seconds h|hour|hours d|day|days
```

`2days and 12hours` is not supported, use `2.5days` instead
