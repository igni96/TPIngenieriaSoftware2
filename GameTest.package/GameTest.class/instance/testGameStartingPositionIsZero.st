tests
testGameStartingPositionIsZero
	|john tim players dice board game|
	john:= Player withName: 'John'.
	tim:= Player withName: 'Tim'.
	players :=Array with: john with: tim.
	dice:= DeterministicDice withQuantityOfSides: 5.
	board:= Board withNumberOfSpaces: 20.
	game:= Game withPlayers: players withDices: dice withBoard: board.
	self deny: game hasEnded.
	self assert: (game positionOf: john) equals: 0.
	self assert: (game positionOf: tim) equals: 0.
	"
	self assert: (game positionOf: 'John') equals: 0.
	self assert: (game positionOf: 'Tim') equals: 0.
	"
	 