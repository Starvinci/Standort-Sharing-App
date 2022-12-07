import 'package:flutter/material.dart';
class new_page extends StatelessWidget {
  const new_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Erstelle eine neue Aktivität'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Neu123'),
          onPressed: () {

          },
        ),
      ),
    );
  }
}