import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  final List<String> sports = const [
    'Cricket',
    'Football',
    'Basketball',
    'Tennis',
    'Hockey',
    'Badminton',
    'Volleyball',
    'Table Tennis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sports List"), backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: sports.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.sports, color: Colors.blue),
              title: Text(sports[index], style: TextStyle(fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
