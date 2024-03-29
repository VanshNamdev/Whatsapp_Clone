import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/Common/auth/widgets/custom_text_field.dart';
import 'package:whatsapp_clone/Common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/Common/widgets/custom_elivated_button.dart';
import 'package:whatsapp_clone/Common/widgets/short_h_bar.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  imagePickerTypeBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShortHBar(),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text('Profile photo',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Profile info',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Please provide your name and an optional profile photo',
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: imagePickerTypeBottomSheet,
              child: Container(
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.theme.photoIconBgColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3, right: 3),
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    size: 48,
                    color: context.theme.photoIconColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(
                      child: CustomTextField(
                    hintText: 'Type tour name here',
                    textAlign: TextAlign.left,
                    autofocus: true,
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: context.theme.photoIconColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
