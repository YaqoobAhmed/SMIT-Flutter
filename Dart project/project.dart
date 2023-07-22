import 'dart:io';

import "adminTask.dart";
import "userTask.dart";

  // Data Structures
  Map<String, String> admins = {
    'admin1': 'adminpass1',
    'admin2': 'adminpass2',
  };

  Map<String, String> users = {
    'user1': 'userpass1',
    'user2': 'userpass2',
  };
List<String> books = ['Book 1', 'Book 2', 'Book 3', 'Book 4', 'Book 5'];
  Map<String, List<String>> borrowedBooks = {};

void main() {

  // Function to display the menu
  void displayMenu() {
    print('========== Library Management System ==========');
    print('1. Admin Login');
    print('2. User Login');
    print('3. Register a New Admin');
    print('4. Register a New User');
    print('5. Exit');
    print('==============================================');
    print('Enter your choice: ');
  }
 
  // Main program loop
  while (true) {
    displayMenu();
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('\nEnter admin username: ');
        String adminUsername = stdin.readLineSync()!;
        print('Enter password: ');
        String adminPassword = stdin.readLineSync()!;

        if (admins.containsKey(adminUsername) &&
            admins[adminUsername] == adminPassword) {
          print('Admin Login Successful.');
          adminTask();
        } else {
          print('Invalid admin credentials.');
        }
        break;

      case 2:
        print('\nEnter user username: ');
        String userUsername = stdin.readLineSync()!;
        print('Enter password: ');
        String userPassword = stdin.readLineSync()!;

        if (users.containsKey(userUsername) &&
            users[userUsername] == userPassword) {
          print('User Login Successful.');
          userTask(userUsername);
        } else {
          print('Invalid user credentials.');
        }
        break;
      
      case 3:
        print("Enter New Admin Name");
        String newAdmin=stdin.readLineSync()!;
        print("Enter Password");
        String newAdminPass=stdin.readLineSync()!;
        admins[newAdmin]=newAdminPass;
        print("New Admin is Registered");
      
      case 4:
        print("Enter New User Name");
        String newUser=stdin.readLineSync()!;
        print("Enter Password");
        String newUserPass=stdin.readLineSync()!;
        users[newUser]=newUserPass;
        print("New User is Registered");

      case 5:
        print('Exiting the Library Management System...');
        return ;

      default:
        print('Invalid choice.');
    }
  }
}
