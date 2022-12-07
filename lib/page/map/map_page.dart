import 'package:flutter/material.dart';
class map_page extends StatelessWidget {
  const map_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Map'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Map123'),
          onPressed: () {

          },
        ),
      ),
    );
  }
}