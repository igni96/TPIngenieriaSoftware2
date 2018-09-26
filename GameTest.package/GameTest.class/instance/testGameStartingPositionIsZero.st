tests
testGameStartingPositionIsZero
	|john tim players dice game dices |
	john:= Player named: 'John'.
	tim:= Player named: 'Tim'.
	players :=Array with: john with: tim.
	dice:= Dice withType: (DeterministicDice new) withQuantityOfSides: 5.
	dices:=Array with: dice.
	game:= Game playedBy: players throwing: dice onABoardWithNumberOfTiles: 20.
	self deny: game hasEnded.
	self assert: (game positionOf: john) equals: 0.
	self assert: (game positionOf: tim) equals: 0.
	"
	self assert: (game positionOf: 'John') equals: 0.
	self assert: (game positionOf: 'Tim') equals: 0.
	"
	 