import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/extension/custom_theme_extension.dart';

showAlertDialog(
    {required BuildContext context, 
    required String message, 
    String? btnText}) {
  return showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          content: Text(
            message,
            style: TextStyle(
              color: context.theme.greyColor,
              fontSize: 15,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                btnText ?? "OK",
                style: TextStyle(color: context.theme.authAppbarTextColor,fontWeight: FontWeight.w900),
              ),
            ),
          ],
        );
      });
}
