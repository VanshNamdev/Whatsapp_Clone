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
      authAppbarTextColor: Color(0xFF008069),
      photoIconBgColor:Color(0xFFF0F2F3),
      photoIconColor:Color(0xFF9DAAB3),
      );
  static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgcolor: Color(0xFF182229),
      langBtnHighlightColor: Color(0xFF09141A),
      authAppbarTextColor: Color(0xFFE9EdEF),
      photoIconBgColor:Color(0xFF283339),
      photoIconColor:Color(0xFF61717B),
      );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgcolor;
  final Color? langBtnHighlightColor;
  final Color? authAppbarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;
  

  const CustomThemeExtension(
      {required this.circleImageColor,
      this.photoIconBgColor, 
      this.photoIconColor, 
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
   Color? authAppbarTextColor,
   Color? photoIconBgColor,
   Color? photoIconColor,
   }
  ) {
   return CustomThemeExtension(
    circleImageColor: cicleImageColor?? this.circleImageColor,
    greyColor: greyColor?? this.greyColor, 
    blueColor: blueColor?? this.blueColor, 
    langBtnBgcolor: langBtnBgcolor?? this.langBtnBgcolor, 
    langBtnHighlightColor: langBtnHighlightColor?? this.langBtnHighlightColor,
    authAppbarTextColor: authAppbarTextColor?? this.authAppbarTextColor,
    photoIconBgColor: authAppbarTextColor?? this.photoIconBgColor,
    photoIconColor: authAppbarTextColor?? this.photoIconColor
    );
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
      langBtnHighlightColor:Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
      photoIconBgColor:Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor:Color.lerp(photoIconColor, other.photoIconColor, t),
      );
}
}