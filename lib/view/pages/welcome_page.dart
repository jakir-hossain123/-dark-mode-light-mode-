import 'package:dark_and_light_mode/view/pages/settings_page.dart';
import 'package:dark_and_light_mode/view/widget_tree.dart';
import 'package:dark_and_light_mode/view/widgets/hero_widget.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeroWidget(),
              FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return WidgetTree();
                    }));
                  },
                  child: Text('Login')
              ),
              FilledButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        margin: EdgeInsets.only(bottom: 100,left: 10),
                        behavior:SnackBarBehavior.floating,
                          content: Text("This is a snackbar"),
                        duration: Duration(seconds: 2),
                      )
                    );
                  },
                  child: Text('show snackbar')
              ),
              FilledButton(
                  onPressed:  () {
                    showDialog(context: context, builder: (context)=>AlertDialog(
                      content: Text('It is a alert dialogue'),
                      title: Text('Jakir'),
                      actions: [
                        TextButton(
                            onPressed:()=> Navigator.pop(context), child: Text("cancel"))
                      ],
                    ));

                  },
                  child: Text('Show alert dialogue')
              ),


            ],
          ),
        ),
      ),
    );
  }
}
