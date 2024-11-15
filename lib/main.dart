import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/event_log_screen.dart';
import 'screens/ac_controls_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IoT Controls',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(), // Starting screen is Login
      routes: {
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(username: '',),
        '/event-log': (context) => EventLogScreen(),
        '/controls': (context) => ControlScreen(),
      },
    );
  }
}
