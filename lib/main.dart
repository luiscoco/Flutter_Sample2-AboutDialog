import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Dialog Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AboutDialog(
          applicationName: 'My Flutter App',
          applicationVersion: '1.0.0',
          applicationIcon: FlutterLogo(),
          applicationLegalese:
              '© 2023 OpenAI. All rights reserved.\nThis is a sample Flutter app.',
          children: <Widget>[
            Text('Developer: John Doe'),
            Text('Email: johndoe@example.com'),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show About Dialog'),
          onPressed: () => _showAboutDialog(context),
        ),
      ),
    );
  }
}
