import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final avatarUrl =
    'https://icon-library.com/images/batman-icon-png/batman-icon-png-22.jpg';

class MyApp extends StatelessWidget {
  Widget _buildCard(icon, title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          title,
          style: TextStyle(color: Colors.teal, fontSize: 16.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(avatarUrl),
            Text(
              'Batman',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Masked Vigilante',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.teal.shade100),
            ),
            _buildCard(Icons.phone, '+44 1232 312312'),
            _buildCard(Icons.email, 'batman@batmail.com'),
          ],
        ),
      ),
    );
  }
}
