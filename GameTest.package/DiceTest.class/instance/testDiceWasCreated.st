tests
testDiceWasCreated
	|dice|
	dice:=Dice withType: (RandomDice new) withQuantityOfSides: 6.
	self assert: dice QuantityOfSides equals: 6.