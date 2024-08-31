import 'package:flutter/material.dart';

class Palette {
  Palette();

  static const _primary = Color.fromRGBO(6, 103, 235, 1);
  static const _primaryLight = Color(0xffd9eeff);
  static const _black = Color(0xff222222);
  static const _lightGrey = Color(0xffBDBDBD);
  static const _greyColor = Color.fromRGBO(142, 142, 143, 1);
  static const _white = Color(0xffffffff);
  static const _disabledColor = Color(0xffE5EFFD);
  static const _snackbarColor = Color(0xff181818);
  static const _textfieldColor = Color(0xffEEEEED);
  static const _textFieldLabelColor = Color(0xffC9D6E7);
  static const _textfielderrorColor = Colors.red;
  static const _notficationDateColor = Color(0xff8E8E8F);

  static const _kSearchBarBackgroundColor = Color(0xffF3FAFD);
  static const _dividerColor = Color(0xffe5effd);
  static const _cardShadowColor = Color(0xff0667eb);

  static const _textfieldHintColor = Color(0xffA5A8AA);
  static const _searchbarBgColor = Color(0xffF3FAFD);

  Color get textFieldLabelColor => _textFieldLabelColor;

  Color get searchbarBgColor => _searchbarBgColor;

  Color get primaryLight => _primaryLight;

  Color get textfielderrorColor => _textfielderrorColor;

  Color get disabledColor => _disabledColor;

  Color get snackbarColor => _snackbarColor;

  Color get textfieldColor => _textfieldColor;

  Color get textfieldHintColor => _textfieldHintColor;

  Color get kSearchBarBackgroundColor => _kSearchBarBackgroundColor;

  Color get notficationDateColor => _notficationDateColor;

  Color get white => _white;

  Color get lightGrey => _lightGrey;

  Color get iconColor => _white;

  Color get iconColorInverse => _white;

  Color get primary => _primary;

  Color get textWhite => _white;

  Color get checkBoxCheck => _white;

  Color get blackColor => _black;

  Color get greyColor => _greyColor;

  Color get dividerColor => _dividerColor;

  Color get cardShadowColor => _cardShadowColor;
}