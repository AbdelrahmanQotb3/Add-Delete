import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String Title ;
  Widget icon;
  TextEditingController Controller ;
  CustomTextField({super.key , required this.Title , required this.icon , required this.Controller});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      decoration: InputDecoration(
        filled: true,
        hintText: Title,
        fillColor: Colors.white,
        border: null,
        hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        suffixIcon: icon,
        suffixIconColor: Colors.blueAccent


      ),
    );
  }

}