import 'package:flutter/material.dart';
import 'package:gian_app_v1/page/login/login_page.dart';

import '../menu_page.dart';

class Forgotpw_page extends StatelessWidget {
  const Forgotpw_page({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final sendButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
          child: const Text('Send Email'),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          }),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('You forgot ure Password?')),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            //logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            sendButton,
            const SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}
