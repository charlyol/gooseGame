String pseudo;
int age;
boolean addAPlayer = true;


String askName() {
  pseudo = javax.swing.JOptionPane.showInputDialog("Enter the player's username");
return pseudo;
}
int askAge() {
  if (pseudo != null) {
    String ageString = javax.swing.JOptionPane.showInputDialog("Entrez l'âge du joueur " + pseudo);
    if (ageString != null) {
      try {
        age = Integer.parseInt(ageString);
        int choix = int(javax.swing.JOptionPane.showConfirmDialog(null, "Would you like to add another player?", "Add a player", javax.swing.JOptionPane.YES_NO_OPTION));

        if (choix == javax.swing.JOptionPane.YES_OPTION) {
          println("Player added: Username = " + pseudo + ", Age = " + age);
        } else {
          println("You have chosen not to add another player.");
          addAPlayer = false;
        }
      }
      catch (NumberFormatException e) {
        javax.swing.JOptionPane.showMessageDialog(null, "Please enter a valid number for the age.", "Error", javax.swing.JOptionPane.ERROR_MESSAGE);
      }
    } else {
      println("You have closed the age entry window.");
      addAPlayer = false;
    }
  } else {
    println("You have closed the pseudo input window.");
    addAPlayer = false;
  }
  return age;
}
