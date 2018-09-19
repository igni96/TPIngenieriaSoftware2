tests
testPlayerIsCreated
|player|
player:= Player withName: 'Miguel'.
self assert: player name equals: 'Miguel'.
self assert: player position equals: 0.