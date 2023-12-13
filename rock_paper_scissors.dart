import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  print('Welcome to Rock, Paper, Scissors game!\n');

  while (true) {
    print('Choose your move:');
    print('1. Rock');
    print('2. Paper');
    print('3. Scissors');
    print('4. Quit');

    String? input = stdin.readLineSync();

    if (input == '1' || input == '2' || input == '3') {
      Move userMove = getMove(int.parse(input));
      Move computerMove = getRandomMove();
      print('\nYou chose: ${moveToString(userMove)}');
      print('Computer chose: ${moveToString(computerMove)}');
      print('\n${getWinner(userMove, computerMove)}\n');
    } else if (input == '4') {
      print('Thank you for playing. Goodbye!');
      break;
    } else {
      print('Invalid input. Please try again.\n');
    }
  }
}

Move getMove(int move) {
  switch (move) {
    case 1:
      return Move.rock;
    case 2:
      return Move.paper;
    case 3:
      return Move.scissors;
    default:
      return Move.rock;
  }
}

Move getRandomMove() {
  Random random = Random();
  List<Move> moves = Move.values;
  return moves[random.nextInt(moves.length)];
}

String moveToString(Move move) {
  switch (move) {
    case Move.rock:
      return 'Rock';
    case Move.paper:
      return 'Paper';
    case Move.scissors:
      return 'Scissors';
  }
}

String getWinner(Move userMove, Move computerMove) {
  if (userMove == computerMove) {
    return 'It\'s a tie!';
  } else if ((userMove == Move.rock && computerMove == Move.scissors) ||
      (userMove == Move.paper && computerMove == Move.rock) ||
      (userMove == Move.scissors && computerMove == Move.paper)) {
    return 'You win!';
  } else {
    return 'Computer wins!';
  }
}
