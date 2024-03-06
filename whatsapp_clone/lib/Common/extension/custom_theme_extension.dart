import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/utils/coloors.dart';

extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme { 
  return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xff25D366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgcolor: Color(0xFFF7F8FA),
      langBtnHighlightColor: Color(0xFFE8E8ED),
      authAppbarTextColor: Color(0xFF008069));
  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgcolor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A),
      authAppbarTextColor: Color(0xFFE9EdEF));
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgcolor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension(
      {required this.circleImageColor,
      required this.greyColor,
      required this.blueColor,
      required this.langBtnBgcolor,
      required this.langBtnHighlightColor,
      required this.authAppbarTextColor,
      });
  @override
  ThemeExtension<CustomThemeExtension> copyWith(
   {Color? cicleImageColor,
   Color? greyColor,
   Color? blueColor,
   Color? langBtnBgcolor,
   Color? langBtnHighlightColor,
   Color? authAppbarTextColor}
  ) {
   return CustomThemeExtension(
    circleImageColor: cicleImageColor?? this.circleImageColor,
    greyColor: greyColor?? this.greyColor, 
    blueColor: blueColor?? this.blueColor, 
    langBtnBgcolor: langBtnBgcolor?? this.langBtnBgcolor, 
    langBtnHighlightColor: langBtnHighlightColor?? this.langBtnHighlightColor,
    authAppbarTextColor: authAppbarTextColor?? this.authAppbarTextColor);
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if(other is! CustomThemeExtension)return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t), 
      greyColor:Color.lerp(greyColor, other.greyColor, t), 
      blueColor:Color.lerp(blueColor, other.blueColor, t), 
      langBtnBgcolor:Color.lerp(langBtnBgcolor, other.langBtnBgcolor, t), 
      authAppbarTextColor:Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t), 
      langBtnHighlightColor:Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t));
}
}