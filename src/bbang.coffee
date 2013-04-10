{exec} = require('child_process')

exports.exec = (cmd, callback) ->
	exe = exec(cmd)
	exe.stdout.on 'data', (data) ->
		console.log(data.toString('utf8'))
	exe.stderr.on 'data', (data) ->
		console.log(data.toString('utf8'))
	exe.on 'close', (code) ->
		if code is 0
			callback?()
		else
			console.log('!! process exited with code ' + code)
			

		
