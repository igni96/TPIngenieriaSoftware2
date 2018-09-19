tests
testGameIsCreated
	|john tim players dice1 dice2 dices board game|
	john:= Player withName: 'John'.
	tim:= Player withName: 'Tim'.
	players :=Array with: john with: tim.
	dice1:= DeterministicDice withQuantityOfSides: 5.
	dice2:= DeterministicDice withQuantityOfSides: 5.
	dices:=Array with: dice1 with: dice2.
	board:= Board withNumberOfSpaces: 20.
	game:= Game withPlayers: players withDices: dices withBoard: board.
	self deny: game hasEnded.
	
	
	
	