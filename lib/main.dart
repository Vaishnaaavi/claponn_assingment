import 'package:claponn/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Claponn());

class Claponn extends StatelessWidget {
  const Claponn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(
          // initialPage: 0,
          ),
      // initialRoute: ,
      // routes: {
      //   HomePage.id : (context) => const HomePage()
      //   WelcomeScreen.id: (context) => const WelcomeScreen(),
      //   ChatScreen.id: (context) => const ChatScreen(),
      //   RegistrationScreen.id: (context) => const RegistrationScreen(),
      // },
    );
  }
}
