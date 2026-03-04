import 'package:dark_and_light_mode/data/bottom_nav_ind.dart';
import 'package:dark_and_light_mode/view/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dark Mode Check'),centerTitle: true,
      actions: [
        ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, darkValue, child) {
            return IconButton(onPressed: () {
              isDarkModeNotifier.value = ! isDarkModeNotifier.value;
            }, icon: Icon(
                darkValue?Icons.dark_mode:Icons.light_mode,
            )
            );
          }
        )
      ],
      ),
      bottomNavigationBar: BottomNavBarWidget(),

    );
  }
}
