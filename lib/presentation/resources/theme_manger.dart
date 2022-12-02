import 'package:flutter/material.dart';
import 'package:prostep1/presentation/resources/color_manger.dart';
import 'package:prostep1/presentation/resources/fonts_manger.dart';
import 'package:prostep1/presentation/resources/styles_manger.dart';
import 'package:prostep1/presentation/resources/values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main color
      primaryColor: ColorManger.primary,
      primaryColorLight: ColorManger.lightPrimary,
      primaryColorDark: ColorManger.darkPrimary,
      disabledColor: ColorManger.gray1,
      splashColor: ColorManger.lightPrimary,

      //cardview theme
      cardTheme: CardTheme(
          color: ColorManger.white,
          shadowColor: ColorManger.gray1,
          elevation: AppSize.s4),
      //appbar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManger.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManger.lightPrimary,
          titleTextStyle: getRegularStyle(
              color: ColorManger.white, fontSize: FontSize.s16)),
      //button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManger.gray1,
          buttonColor: ColorManger.primary,
          splashColor: ColorManger.lightPrimary),
//elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManger.white, fontSize: FontSize.s17),
              primary: ColorManger.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      //text theme
      textTheme: TextTheme(
        displayLarge:
            getSemiBoldStyle(color: ColorManger.white, fontSize: FontSize.s24),
        headlineLarge: getSemiBoldStyle(
            color: ColorManger.darkGray, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManger.darkGray, fontSize: FontSize.s14),
        titleMedium:
            getMediumStyle(color: ColorManger.primary, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManger.gray1),
        bodySmall: getRegularStyle(color: ColorManger.gray),
      ),
      //input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle:
            getRegularStyle(color: ColorManger.gray, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManger.gray, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManger.error),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.gray, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      ));
}
