import 'package:dark_and_light_mode/view/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool studentValue = false;
 TextEditingController controller = TextEditingController();
 TextEditingController nameController = TextEditingController();
 TextEditingController ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('HOME PAGE'),
              TextField(

                controller: controller,
                decoration: InputDecoration(
                  hintText: 'AppBar Text',
                border: OutlineInputBorder()
              ),),
              const SizedBox(height: 20,),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name Field',
                  border: OutlineInputBorder(

                  )
                ),
              ),TextField(
                keyboardType: TextInputType.number,
                controller: ageController,
                decoration: InputDecoration(
                  hintText: 'age Field',
                  border: OutlineInputBorder(

                  )
                ),
              ),

              SizedBox(height: 20,),
              SwitchListTile(title:Text('Student Data'),
              value: studentValue, onChanged: (value){
                setState(() {
                  studentValue = value;
                });
              }),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    if(ageController.text.isNotEmpty)
                   {
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       userModel1 user = userModel1(name: nameController.text, age: int.parse(ageController.text.toString()), isStudent: studentValue, appData: controller.text);

                       return SettingsPage(
                         user: user,

                       );
                     }));
                   }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('age input must')))
                    ;}

                  },
                  child: Text('go to setting page')
              )
            ],
          ),
        ),
      ),
    );
  }
}
class userModel1 {
  final String appData;
  final  String name;
  final int age;
  final bool isStudent;
  userModel1({ required this.name, required this.age, required this.isStudent, required this.appData});
}