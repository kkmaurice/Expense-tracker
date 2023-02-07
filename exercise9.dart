import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write('Type exit to quit the game\n');
  guessingGame();
}

void guessingGame(){
  var random = Random();
  var randomNumber = random.nextInt(100);
  int noOfGuesses = 0;

  while(true){
    noOfGuesses+=1;
    stdout.write('Guess a number between 1 to 100: \n');
    String chosenNumber = stdin.readLineSync()!;

    if(chosenNumber.toLowerCase() == 'exit'){
      print('Bye Bye!!');
      break;
    }else if(int.parse(chosenNumber) == randomNumber){
      print('Bing!!Exactly correct. You made $noOfGuesses guesses');
      continue;
    }else if(int.parse(chosenNumber) > randomNumber){
      print('Your guess is too high');
      continue;
    }else{
      print('Your guess is too low');
    }
  }
}