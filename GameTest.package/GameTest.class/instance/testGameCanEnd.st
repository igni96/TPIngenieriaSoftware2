tests
testGameCanEnd
	| john tim players dice dices game |
	john := Player named: 'John'.
	tim := Player named: 'Tim'.
	players := Array with: john with: tim.
	dice := Dice withType: (DeterministicDice new) withQuantityOfSides: 5.
	dices := Array with: dice.
	
	game := Game playedBy: players throwing: dices onABoardWithNumberOfTiles: 20.
	self deny: game hasEnded.
	self assert: (game positionOf: john) equals: 0.
	self assert: (game positionOf: tim) equals: 0.
	game turnOf: john.
	game turnOf: tim.
	self assert: (game positionOf: john) equals: 5.
	self assert: (game positionOf: tim) equals: 1.
	game turnOf: john.
	game turnOf: tim.
	game turnOf: john.
	game turnOf: tim.
	game turnOf: john.
	self should: [game turnOf: tim] raise: AssertionFailure .
	self assert: (game positionOf: john) equals: 20.
	self assert: (game positionOf: tim) equals: 3.
	self assert: game hasEnded