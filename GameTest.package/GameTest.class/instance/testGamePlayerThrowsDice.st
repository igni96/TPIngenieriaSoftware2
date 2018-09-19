tests
testGamePlayerThrowsDice
	|john tim players dice dices board game|
	john:= Player withName: 'John'.
	tim:= Player withName: 'Tim'.
	players :=Array with: john with: tim.
	dice:= DeterministicDice withQuantityOfSides: 5.
	dices:=Array with: dice.
	board:= Board withNumberOfSpaces: 20.
	game:= Game withPlayers: players withDices: dices withBoard: board.
	self deny: game hasEnded.
	self assert: (game positionOf: john) equals: 0.
	self assert: (game positionOf: tim) equals: 0.
	game turnOf: john withResult: 5.
	
	self assert: (game positionOf: john) equals: 5.
	
	