import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Add your logo or image here
              // Image.asset('assets/logo.png', width: 100, height: 100),

              SizedBox(height: 20),

              // Email input field
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              SizedBox(height: 20),

              // Password input field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              SizedBox(height: 20),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Add your authentication logic here
                },
                child: Text('Login'),
              ),

              SizedBox(height: 10),

              // Signup link
              TextButton(
                onPressed: () {
                  // Navigate to the signup page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text('Don\'t have an account? Sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}