import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/Common/utils/coloors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
    {super.key, 
    this.controller, 
    this.hintText, 
    this.readOnly, 
    this.textAlign, 
    this.keyboardType, 
    this.prefixText, 
    this.onTap, 
    this.sufficIcon, 
    this.onChanged, 
    this.fontSize, 
    this.autofocus
    });

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? sufficIcon;
  final Function(String)? onChanged;
  final double? fontSize;
  final bool? autofocus;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly?? false,
      textAlign: textAlign?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType: null ,
      onChanged: onChanged,
      style: TextStyle(fontSize: fontSize),
      autofocus: autofocus??false,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: sufficIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        enabledBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark),
        ),
        focusedBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: Coloors.greenDark,width: 2),
        )
        )
      );
  }
}