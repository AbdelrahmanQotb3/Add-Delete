import 'package:add_delete/contact_widget.dart';
import 'package:add_delete/custom_button.dart';
import 'package:add_delete/custom_input.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  List<ContactInfo> contacts = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Add & Delete",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Contacts Screen", style: TextStyle(
            fontSize: 25,

          ),),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        Title: "Enter your Name here",
                        icon: Icon(Icons.edit),
                        Controller: name,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        Title: "Enter your Phone here",
                        icon: Icon(Icons.phone),
                        Controller: phone,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Visibility(
                      visible: (contacts.length < 3),
                      child: Expanded(
                        child: CustomButton(
                          Name: "Add",
                          color: Colors.blueAccent,
                          press: add,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Visibility(
                      visible: (contacts.isNotEmpty),
                      child: Expanded(child: CustomButton(
                        Name: "Delete",
                        color: Colors.redAccent,
                        press: delete,
                      ),
                      ),
                    ),

                  ],
                ),
                for(Widget item in contacts)
                  item 

              ],
            ),
          ),
        ),
      ),
    );
  }
  void add(){
    if(name.text.isNotEmpty && phone.text.isNotEmpty){
      setState(() {
        contacts.add(ContactInfo(name: name.text, phone: phone.text));
        name.clear();
        phone.clear();
      });
    }
  }
  void delete(){
    setState(() {
      contacts.removeLast();
    });
  }
}