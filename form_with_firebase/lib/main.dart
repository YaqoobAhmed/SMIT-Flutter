import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_with_firebase/Screens/login_screen/Screen/login_screen.dart';
import 'package:form_with_firebase/Screens/start_screen/Screen/start_screen.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Initialize the path_provider package
  await getApplicationDocumentsDirectory();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
