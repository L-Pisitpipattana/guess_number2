// ignore_for_file: avoid_print
import 'dart:math';
import 'dart:io';

class Game{ // camel case
  static const maxRandom = 100;
  int? _answer;
  //var guessCount = 0;
  var _guessCount = 0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1; //มี_หน้าตัวแปร เป็น private

  }

  int doGuess(int number){
    //guessCount = 0;
    _guessCount++;
    if(number > _answer!){
      return 1;
    }else if(number < _answer!){
      return -1;
    }else{
      return 0;
    }
  }

  int getguessCount(){
    return _guessCount;
  }

  void PlayGame(){
    var isCorrect = false;
    print("╔══════════════════════════════════════════════════════");
    print("║                ❄ GUESS THE NUMBER ❄                 ");
    print("║──────────────────────────────────────────────────────");

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      //guessCount++;

      var result = doGuess(guess);
      var count = getguessCount();
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print("║──────────────────────────────────────────────────────");
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print("║──────────────────────────────────────────────────────");
      } else if (result == 0) {
        print('║ ➜ $guess is CORRECT 🍸, total guesses: $count');
        print("║──────────────────────────────────────────────────────");
        isCorrect = true;
      }
    } while (!isCorrect);

    print("║                     🎄 THE END 🎄                     ");
    print("║       Christmas is coming, Be merry! Be happy!       ");
    print("╚══════════════════════════════════════════════════════");
  }

}