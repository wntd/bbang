{exec} = require('./lib/bbang')

task 'test', 'Test', ->
	build -> exec('mocha --compilers coffee:coffee-script --timeout 10000 --require should')

task 'build', 'Compile Coffee Script Files', ->
	build()
		
build = (callback) ->
	exec('coffee -mo lib/ -c src/', callback)