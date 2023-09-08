import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/AppTextField.dart';
import 'package:flutter_application_test/components/ToolBar.dart';
import 'package:flutter_application_test/components/UserAvatar.dart';
import 'package:flutter_application_test/styles/AppColors.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: UserAvatar(
                    size: 120,
                    radius: 40,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: AppColors.primay,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            AppTextField(
              hint: "First name",
            ),
            AppTextField(
              hint: "Last name",
            ),
            AppTextField(
              hint: "Phone number",
            ),
            AppTextField(
              hint: "Location",
            ),
            AppTextField(
              hint: "birthday",
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("gender"),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text("Male"),
                          value: Gender.male,
                          contentPadding: EdgeInsets.zero,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("female"),
                          value: Gender.female,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("other  "),
                          value: Gender.other,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
