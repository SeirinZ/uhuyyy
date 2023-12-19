import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RegisterPage.dart';
import 'TransactionPage.dart';
import 'TransactionDetailPage.dart';
import 'DashboardPage.dart'; // Import DashboardPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warmindo Starboy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/dashboard', 
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/dashboard': (context) => DashboardPage(), 
        '/transaction': (context) => TransactionPage(),
        '/transaction-detail': (context) => TransactionDetailPage(),
      },
    );
  }
}
