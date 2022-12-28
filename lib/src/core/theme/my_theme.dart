import 'package:flutter/material.dart';

import 'IMyTheme.dart';
import 'text/my_texts.dart';

class MyTheme extends IMyTheme {
  static MyTheme? _instance;
  static MyTheme get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = MyTheme.init();
      return _instance!;
    }
  }

  MyTheme.init();

  ThemeData get themeData => ThemeData(
        textTheme: MyTexts.instance.textTheme,
        appBarTheme: _appBarTheme,
      );

  AppBarTheme get _appBarTheme {
    return const AppBarTheme();
  }
}
