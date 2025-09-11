import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> touristPlaces = const [
    {"name": "Taj Mahal", "location": "Agra"},
    {"name": "Mysore Palace", "location": "Mysore"},
    {"name": "Charminar", "location": "Hyderabad"},
    {"name": "Gateway of India", "location": "Mumbai"},
    {"name": "Hampi", "location": "Karnataka"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: touristPlaces.length,
        itemBuilder: (context, index) {
          final place = touristPlaces[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.location_on, color: Colors.teal),
              title: Text(place["name"]!),
              subtitle: Text(place["location"]!),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Clicked on ${place["name"]}")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
