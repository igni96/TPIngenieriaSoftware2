tests
testDiceWasCreated
	|dice|
	dice:=Dice withQuantityOfSides: 6.
	self assert: dice QuantityOfSides equals: 6.