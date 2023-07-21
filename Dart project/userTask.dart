import 'dart:io';

import 'project.dart';

// Function to perform user tasks
  void userTask(String username) {
    int userChoice;
    do {
      
    
    print('\n========= User Panel =========');
    print('1. Borrow Book');
    print('2. Return Book');
    print('3. List Borrowed Books');
    print('4. Logout');
    print('===============================');

    userChoice = int.parse(stdin.readLineSync()!);

    switch (userChoice) {
      case 1:
        print('\nEnter the name of the book to borrow: ');
        String bookToBorrow = stdin.readLineSync()!;
        if (books.contains(bookToBorrow)) {
          if (!borrowedBooks.containsKey(username)) {
            borrowedBooks[username] = [];
          }
          borrowedBooks[username]!.add(bookToBorrow);
          books.remove(bookToBorrow);
          print('You have borrowed $bookToBorrow.');
        } else {
          print('The book $bookToBorrow is not available in the library.');
        }
        break;

      case 2:
        if (borrowedBooks.containsKey(username)) {
          print('\n===== List of Borrowed Books =====');
          for (int i = 0; i < borrowedBooks[username]!.length; i++) {
            print('${i + 1}. ${borrowedBooks[username]![i]}');
          }
          print('==================================');

          print('\nEnter the name of the book to return: ');
          String bookToReturn = stdin.readLineSync()!;
          if (borrowedBooks[username]!.contains(bookToReturn)) {
            borrowedBooks[username]!.remove(bookToReturn);
            books.add(bookToReturn);
            print('You have returned $bookToReturn.');
          } else {
            print('You have not borrowed $bookToReturn.');
          }
        } else {
          print('You have not borrowed any books.');
        }
        break;

      case 3:
        if (borrowedBooks.containsKey(username)) {
          print('\n===== List of Your Borrowed Books =====');
          for (int i = 0; i < borrowedBooks[username]!.length; i++) {
            print('${i + 1}. ${borrowedBooks[username]![i]}');
          }
          print('======================================');
        } else {
          print('You have not borrowed any books.');
        }
        break;

      case 4:
        print('Logging out from User Panel...');
        break;

      default:
        print('Invalid choice.');
    }
    } while (userChoice !=4);
  }
