int indexTableau=0; //<>// //<>//
int tailleTableau=0;
String [] pseudoPlayers = new String[tailleTableau];
int [] agePlayers = new int[tailleTableau];


void setup() {
  while (addAPlayer) {
   pseudoPlayers[indexTableau]=askName();
   agePlayers[indexTableau]=askAge();
   tailleTableau++;
   indexTableau++;
  }
}
