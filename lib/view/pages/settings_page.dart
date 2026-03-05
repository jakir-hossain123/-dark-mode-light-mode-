import 'package:dark_and_light_mode/view/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../../data/bottom_nav_ind.dart';

class SettingsPage extends StatefulWidget {
   final userModel1 user;
    SettingsPage({required this.user});




  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isClicked = false;
  bool switchValue = false;
  double sliderValue = 0;
  String? selectedItem= 'e1';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.user.appData),
      automaticallyImplyLeading: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Name:${widget.user.name}"),
              Text("Age:${widget.user.age}"),
              Text("isStudent? : ${widget.user.isStudent ? 'yes': 'No'}"),
              TextField(
                onEditingComplete: () => setState(() {}),
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text(controller.text),

              DropdownButton(
                value: selectedItem,
                  items: [
                    DropdownMenuItem(value: 'e1',child: Text('element 1'),),
                    DropdownMenuItem(value: 'e2',child: Text('element 2'),),
                    DropdownMenuItem(value: 'e3',child: Text('element 3'),),
                    DropdownMenuItem(value: 'e4',child: Text('element 4'),),

                  ], 
                  onChanged: (value){
                    setState(() {
                      selectedItem = value;
                    });
                  }
              ),
              CheckboxListTile(
                title: Text('is jakir good person?'),
                value: isClicked,
                onChanged: (bool? value) {
                  setState(() {
                    isClicked = value;
                  });
                },
                tristate: false,
              ),
              

              
              

              SwitchListTile.adaptive(
                title: Text('Switch me'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              Slider(
                value: sliderValue,
                max: 100,
                divisions: 100,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.red,
                onTap: () => print('Image tapped'),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black38,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor:Colors.black

                ),
                  onPressed: () {
                    print('eleveted button clicked');
                  } ,
                  child: Text('Click me')
              ),
              ElevatedButton(

                  onPressed: () {
                    print('eleveted button clicked');
                  } ,
                  child: Text('Click me')
              ),
              Slider(value: sliderValue,max: 100,divisions: 100, onChanged: (value) {
                setState(() {
                  sliderValue=value;
                });

              },
              ),
              OutlinedButton(

                  onPressed: () {
                    print('eleveted button clicked');
                  } ,
                  child: Text('Click me')
              ),
              TextButton(

                  onPressed: () {
                    print('eleveted button clicked');
                  } ,
                  child: Text('Click me')
              ),
              FilledButton(

                  onPressed: () {
                    print('eleveted button clicked');
                  } ,
                  child: Text('Click me')
              ),
              CloseButton(),
              BackButton(onPressed: (){
                Navigator.pop(context);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
