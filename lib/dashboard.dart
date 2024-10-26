// dashboard.dart
import 'package:flutter/material.dart';
import 'login.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              'Log Out',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berhasil masuk ke dashboard!\nMasih dalam tahap pengembangan',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Add space between text and image
            Image.asset(
              'assets/engineer.jpeg',
              width: 200, // Set the width as needed
              height: 200, // Set the height as needed
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
