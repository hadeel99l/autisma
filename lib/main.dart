import 'package:autisma/games/math/screens/game_screen.dart';
import 'package:autisma/games/memory_game/screens/memory.dart';
import 'package:autisma/parents/Add%20Games/Add%20Game.dart';
import 'package:autisma/parents/Score.dart';
import 'package:autisma/parents/Add%20Child.dart';
import 'package:autisma/screens/Login.dart';
import 'package:autisma/screens/Signup.dart';
import 'package:autisma/screens/intro_screen.dart';
import 'package:autisma/parents/upload.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xfff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: IntroScreen(),
      routes: {
        'intro': (_) => IntroScreen(),
        'login': (_) => LoginScreen(),
        'register': (_) => RegistrationScreen(),
        'memory': (_) => Home(),
        'mathmetical': (_) => GameScreen(),
        'add_child': (_) => AddChild(),
        'add_games': (_) => Games(),
        'score': (_) => Score(),
        'upload': (_) => Upload(),
      },
    );
  }
}
