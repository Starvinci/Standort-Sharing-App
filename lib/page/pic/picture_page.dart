import 'package:flutter/material.dart';
// ignore: camel_case_types
class foto_page extends StatelessWidget {
  const foto_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Fotos'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Fotos123'),
          onPressed: () {

          },
        ),
      ),
    );
  }
}