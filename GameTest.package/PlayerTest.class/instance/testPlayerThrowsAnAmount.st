tests
testPlayerThrowsAnAmount
	|player|
	player:= Player withName: 'Maria'.
	
	player throwsTest: 6.
	self assert: player position equals: 6