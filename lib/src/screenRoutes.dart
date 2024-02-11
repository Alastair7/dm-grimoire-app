getRoutes(type){
  String route;

  const map = {
    'diceScreen': 'DiceScreen()',
    'mapScreen': '/mapScreen',
    'bestiaryScreen': '/bestiaryScreen',
    'encounterScreen': '/encounterScreen',
    'generateEnemyScreen': '/generateEnemyScreen',
    'diaryScreen': '/diaryScreen',
    'generateCharacterScreen': '/generateCharacterScreen',
    'generateShopScreen': '/generateShopScreen',
    'generateSeedScreen': '/generateSeedScreen',
    'generateDialogueScreen': '/generateDialogueScreen',

    // TODO
    //'spellbookScreen': '/spellbookScreen',

  };

  route = map[type] ?? 'Not found';
  return route;
}