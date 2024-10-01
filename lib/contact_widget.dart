import 'package:flutter/material.dart';

  class ContactInfo extends StatelessWidget{
  String name;
  String phone;
  ContactInfo({super.key, required this.name , required this.phone});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name : $name "),
          SizedBox(height: 10,),
          Text("Phone : $phone ")
        ],
      ),
    );
  }

}