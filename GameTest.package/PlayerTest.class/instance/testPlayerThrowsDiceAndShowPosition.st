tests
testPlayerThrowsDiceAndShowPosition
	|player dice|
	player:= Player named: 'Maria'.
	dice:= Dice withType: (DeterministicDice new) withQuantityOfSides: 6.
	player throws: dice.
	self assert: (player position)equals: 5.       