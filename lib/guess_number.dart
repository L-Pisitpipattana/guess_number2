// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:guess_number2/game.dart';



void main() {
  //literal ค่าที่มองเห็นได้ในโค้ด
  const maxRandom = 100; // compile-time constant
  //final ประกาศตัวแปรให้เป็นค่าคงที่ ห้ามแก้ไขค่า
  var game = Game();
  game.PlayGame();
  do {
    stdout.write('Play again? (Y/N): ');
    var input = stdin.readLineSync();
    if (input == null) {
      continue;
    } else {
      if (input == "Y" || input == "y") {
        game.PlayGame();
        continue;
      } else if (input == "N" || input == "n") {
        break;
      }
    }
  }while(true);

}
