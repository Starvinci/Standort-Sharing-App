import 'package:flutter/material.dart';
import 'package:gian_app_v1/page/menu_page.dart';

class Register_page extends StatelessWidget {
  const Register_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Register'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('complete'),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MainScreenPage()));
            }),
      ),
    );
  }
}
