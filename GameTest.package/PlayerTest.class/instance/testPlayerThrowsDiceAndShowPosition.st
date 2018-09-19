tests
testPlayerThrowsDiceAndShowPosition
	|player dice|
	player:= Player withName: 'Maria'.
	dice:= Dice withQuantityOfSides: 6.
	player throws: dice.
	 player position.       