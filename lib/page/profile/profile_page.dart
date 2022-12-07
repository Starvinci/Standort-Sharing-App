import 'package:flutter/material.dart';
import 'package:gian_app_v1/model/user.dart';
import 'package:gian_app_v1/model/userInfo.dart';
import 'package:gian_app_v1/page/profile/profile_editor.dart';
import 'package:gian_app_v1/widgets/number_widget.dart';
import 'package:gian_app_v1/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(title: const Text('Dein Profil')),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(
            imagePath:
                "/Users/timblankenstein/Desktop/Projekte/App1/gian_app_v1/assets/Profile.png",
            onClicked: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          //buildName(),
          const SizedBox(height: 24),
          //
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          //  buildAbout(),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
