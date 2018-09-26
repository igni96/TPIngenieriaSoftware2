initialization
playedBy: aPlayerArray throwing: aDiceArray onABoardWithNumberOfTiles: aBoard
	self assertNumberOfTilesGreaterThanZero: aBoard. 
	 ^self new initializeWithPlayers: aPlayerArray  withDices: aDiceArray withBoard: aBoard.