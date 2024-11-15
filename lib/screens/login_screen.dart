import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_userController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF1E1E2C), // Dark background color
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
        ),
        backgroundColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoTextField(
                controller: _userController,
                padding: EdgeInsets.all(16),
                placeholder: 'User ID',
                placeholderStyle: TextStyle(color: Colors.white70),
                style: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                  color: Color(0xFF2A2D3E),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 20),
              CupertinoTextField(
                controller: _passwordController,
                padding: EdgeInsets.all(16),
                placeholder: 'Password',
                placeholderStyle: TextStyle(color: Colors.white70),
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: BoxDecoration(
                  color: Color(0xFF2A2D3E),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 20),
              CupertinoButton(
                color: Colors.green,
                onPressed: _login,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
