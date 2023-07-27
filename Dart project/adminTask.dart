import 'dart:io';

import 'project.dart';

// Function to perform admin tasks
  void adminTask() {
    
    int adminChoice;
    do {
      
    print('\n========= Admin Panel =========');
    print('1. Add Book');
    print('2. Remove Book');
    print('3. List Books');
    print('4. Logout');
    print('===============================');

    adminChoice = int.parse(stdin.readLineSync()!);

    switch (adminChoice) {
      case 1:
        print('\nEnter the name of the book to add: ');
        String newBook = stdin.readLineSync()!;
        books.add(newBook);
        print('$newBook has been added to the library.');
        break;

      case 2:
        print('\nEnter the name of the book to remove: ');
        String bookToRemove = stdin.readLineSync()!;
        if (books.contains(bookToRemove)) {
          books.remove(bookToRemove);
          print('$bookToRemove has been removed from the library.');
        } else {
          print('The book $bookToRemove is not available in the library.');
        }
        break;

      case 3:
        print('\n===== List of Available Books =====');
        for (int i = 0; i < books.length; i++) {
          print('${i + 1}. ${books[i]}');
        }
        print('===================================');
        break;

      case 4:
        print('Logging out from Admin Panel...Your login time was $LoginTime ');
        break;

      default:
        print('Invalid choice.');
        
    }
    } while (adminChoice != 4);
  }
