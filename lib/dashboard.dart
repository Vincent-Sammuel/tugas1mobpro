// dashboard_page.dart
import 'package:flutter/material.dart';
import 'login.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berhasil masuk ke dashboard!\nKlik tombol di kanan atas untuk kembali ke halaman login',
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
