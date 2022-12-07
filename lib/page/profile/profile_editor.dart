import 'package:flutter/material.dart';
import 'package:gian_app_v1/model/user.dart';
import 'package:gian_app_v1/model/userInfo.dart';
import 'package:gian_app_v1/page/menu_page.dart';
import 'package:gian_app_v1/page/profile/profile_page.dart';
import 'package:gian_app_v1/widgets/appbar_widget.dart';
import 'package:gian_app_v1/widgets/button_widget.dart';
import 'package:gian_app_v1/widgets/profile_widget.dart';
import 'package:gian_app_v1/widgets/textField_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  EditProfilePageState createState() => EditProfilePageState();
}

class EditProfilePageState extends State<EditProfilePage> {
  User user = UserInfo.myUser;

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Speichern',
        onClicked: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => (const MainScreenPage())));
        },
      );
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              //imagePath: user.imagePath,
              imagePath:
                  "/Users/timblankenstein/Desktop/Projekte/App1/gian_app_v1/assets/Profile.png",
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Ganzer Name',
              text: user.name,
              onChanged: (name) {
                //user.name = name;
              },
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Info',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 24),
            Center(child: buildUpgradeButton()),
            const SizedBox(height: 10),
          ],
        ),
      );
}
