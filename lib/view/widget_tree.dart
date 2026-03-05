import 'package:dark_and_light_mode/data/bottom_nav_ind.dart';
import 'package:dark_and_light_mode/view/pages/home_page.dart';
import 'package:dark_and_light_mode/view/pages/profile_page.dart';
import 'package:dark_and_light_mode/view/pages/settings_page.dart';
import 'package:dark_and_light_mode/view/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages =[
  HomePage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dark Mode Check'),centerTitle: true,
      // actions: [
      //   ValueListenableBuilder(
      //     valueListenable: isDarkModeNotifier,
      //     builder: (context, darkValue, child) {
      //       return IconButton(onPressed: () {
      //         isDarkModeNotifier.value = ! isDarkModeNotifier.value;
      //       }, icon: Icon(
      //           darkValue?Icons.dark_mode:Icons.light_mode,
      //       )
      //       );
      //     }
      //   ),
      //   IconButton(onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(builder: (context){
      //       return SettingsPage();
      //     }));
      //   },
      //       icon: Icon(Icons.settings))
      // ],

      ),
      body: ValueListenableBuilder(valueListenable: selectedPage,

          builder: (context, selectedPageIndex, child) {
            return pages.elementAt(selectedPageIndex);
          },
      ),
      bottomNavigationBar: BottomNavBarWidget(),

    );
  }
}
