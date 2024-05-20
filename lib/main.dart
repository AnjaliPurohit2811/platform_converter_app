
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/screens/provider/chat_provider.dart';
import 'package:platform_converter_app/screens/provider/date_provider.dart';
import 'package:platform_converter_app/screens/provider/imagepicker.dart';
import 'package:platform_converter_app/screens/provider/profile_switch_provider.dart';
import 'package:platform_converter_app/screens/provider/switch_provider.dart';
import 'package:platform_converter_app/screens/provider/theme_provider.dart';
import 'package:platform_converter_app/screens/utils/adaptive/adaptive.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SwitchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CustomImageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PersonAddProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChatProvider(),
        ),
      ],
      child: AdaptiveScreen(),
    ),
  );
}

