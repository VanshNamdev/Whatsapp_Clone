import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/Common/routes/routes.dart';
import 'package:whatsapp_clone/Common/widgets/custom_elivated_button.dart';
import 'package:whatsapp_clone/Common/widgets/language_button.dart';
import 'package:whatsapp_clone/Common/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Image.asset(
              'assets/images/circle.png',
              color: context.theme.circleImageColor,
            ),
          ),
        )),
        const SizedBox(
          height: 40,
        ),
        Expanded(
            child: Column(
          children: [
            const Text("Welcome to Whatsapp",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const PrivacyAndTerms(),
            CustomElevatedButton(onPressed: ()=>navigateToLoginPage(context), text: 'AGREE AND CONTINUE'),
            const SizedBox(
              height: 50,
            ),
            const LanguageButton(),
          ],
        ))
      ],
    ));
  }
}
