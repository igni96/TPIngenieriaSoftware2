tests
testGameIsCreated
	|john tim players dice1 dice2 dices game|
	john:= Player named: 'John'.
	tim:= Player named: 'Tim'.
	players :=Array with: john with: tim.
	dice1:= Dice withType: (DeterministicDice new) withQuantityOfSides: 5.
	dice2:= Dice withType: (DeterministicDice new) withQuantityOfSides: 5.
	dices:=Array with: dice1 with: dice2.
	
	game:= Game playedBy: players throwing: dices onABoardWithNumberOfTiles: 20.
	self deny: game hasEnded.
	
	
	
	