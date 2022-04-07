import 'dart:js';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.all(10),
          onPressed: () {
            Navigator.pushNamed(context, '/about');
            Navigator.pushNamed(context, '/portofolio');
            Navigator.pushNamed(context, '/contact');
          },
          child: Text(
            'Tap Untuk ke AboutPage',
          ),
        ),
      ),
    );
  }
}
