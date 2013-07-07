require('source-map-support').install()
os = require('os')

describe 'test', ->
	it '1 + 1 = 2', ->
		n = 1 + 1
		n.should.equal(2)

describe 'bash', ->
	it 'run bash', ->
		os.platform().toLowerCase().indexOf('windows').should.equal(-1)

describe 'batch', ->
	it 'run batch', ->
		os.platform().toLowerCase().indexOf('windows').should.not.equal(-1)