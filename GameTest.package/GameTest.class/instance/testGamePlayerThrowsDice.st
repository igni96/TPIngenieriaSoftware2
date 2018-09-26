tests
testGamePlayerThrowsDice
	|john tim players dice dices game|
	john:= Player named: 'John'.
	tim:= Player named: 'Tim'.
	players :=Array with: john with: tim.
	dice:= Dice withType: (DeterministicDice new) withQuantityOfSides: 5.
	dices:=Array with: dice.
	
	game:= Game playedBy: players throwing: dices onABoardWithNumberOfTiles: 20.
	self deny: game hasEnded.
	self assert: (game positionOf: john) equals: 0.
	self assert: (game positionOf: tim) equals: 0.
	game turnOf: john.
	
	self assert: (game positionOf: john) equals: 5.
	
	