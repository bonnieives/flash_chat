import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/chat_screen.dart';
import 'enum.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: Screen.welcome.toString(),
      routes: {
        Screen.welcome.toString(): (context) => WelcomeScreen(),
        Screen.login.toString(): (context) => LoginScreen(),
        Screen.register.toString(): (context) => RegistrationScreen(),
        Screen.chat.toString(): (context) => ChatScreen(),
      },
    );
  }
}