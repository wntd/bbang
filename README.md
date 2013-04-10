# bbang

## install

	npm install bbang
	
## bbang.exec(cmd, [complete])

	{exec} = require('./lib/bbang')

	task 'test', 'Test', ->
		build ->
			exec('mocha --compilers coffee:coffee-script --timeout 10000 --require should')
	
	task 'run', 'Run Server', ->
		build ->
			exec('node lib/server.js')
	
	task 'build', 'Compile Coffee Script Files', ->
		build()
			
	build = (callback) ->
		exec('coffee -m -o lib/ -c src/', callback)

