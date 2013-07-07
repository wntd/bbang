exec = require('child_process').exec
os = require('os')

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

exports.win = -> os.platform().toLowerCase().indexOf('windows') > -1