import 'package:flutter/material.dart';
import 'package:gian_app_v1/page/login/login_page.dart';

void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'MainScreen';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      home: LoginPage(),
      
    );
  }
}



