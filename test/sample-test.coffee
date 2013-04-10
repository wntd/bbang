require('source-map-support').install()

describe 'test', ->
	it '1 + 1 = 2', ->
		n = 1 + 1
		n.should.equal(2)