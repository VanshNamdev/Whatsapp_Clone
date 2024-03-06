import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/utils/coloors.dart';

extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme { 
  return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
      cicleImageColor: Color(0xff25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgcolor: Color(0xFFF7F8FA),
      langBtnHighlightColor: Color(0xFFE8E8ED));
  static const darkMode = CustomThemeExtension(
      cicleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgcolor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A));
  final Color? cicleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgcolor;
  final Color? langBtnHighlightColor;

  const CustomThemeExtension(
      {required this.cicleImageColor,
      required this.greyColor,
      required this.blueColor,
      required this.langBtnBgcolor,
      required this.langBtnHighlightColor});
  @override
  ThemeExtension<CustomThemeExtension> copyWith(
   {Color? cicleImageColor,
   Color? greyColor,
   Color? blueColor,
   Color? langBtnBgcolor,
   Color? langBtnHighlightColor}
  ) {
   return CustomThemeExtension(
    cicleImageColor: cicleImageColor?? this.cicleImageColor,
    greyColor: greyColor?? this.greyColor, 
    blueColor: blueColor?? this.blueColor, 
    langBtnBgcolor: langBtnBgcolor?? this.langBtnBgcolor, 
    langBtnHighlightColor: langBtnHighlightColor?? this.langBtnHighlightColor);
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if(other is! CustomThemeExtension)return this;
    return CustomThemeExtension(
      cicleImageColor: Color.lerp(cicleImageColor, other.cicleImageColor, t), 
      greyColor:Color.lerp(greyColor, other.greyColor, t), 
      blueColor:Color.lerp(blueColor, other.blueColor, t), 
      langBtnBgcolor:Color.lerp(langBtnBgcolor, other.langBtnBgcolor, t), 
      langBtnHighlightColor:Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t));
}
}