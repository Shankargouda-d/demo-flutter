import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // Light blue background
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 190, 76, 9), // AppBar blue color
        title: Text(
          "Home Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue[100], // Slightly darker blue container
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            "Welcome, $username 👋",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900], // Dark blue text
            ),
          ),
        ),
      ),
    );
  }
}