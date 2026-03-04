import 'package:dark_and_light_mode/data/bottom_nav_ind.dart';
import 'package:dark_and_light_mode/view/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, darlValue, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green,
                brightness: darlValue?Brightness.light: Brightness.dark
            ),

          ),
          home: WidgetTree(),
        );
      }
    );
  }
}
