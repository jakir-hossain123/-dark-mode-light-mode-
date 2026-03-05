import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurpleAccent[500],
      body: Center(
        child: Column(  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PROFILE PAGE')
          ],
        ),
      ),
    );
  }
}
