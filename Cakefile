{exec, win} = require('./lib/bbang')

task 'test', 'Test', ->
	build ->
		grep = if win() then 'batch|test' else 'bash|test'
		exec "mocha --compilers coffee:coffee-script --timeout 10000 --require should --grep '#{grep}'"

task 'build', 'Compile Coffee Script Files', ->
	build()

build = (callback) ->
	exec('coffee -mo lib/ -c src/', callback)