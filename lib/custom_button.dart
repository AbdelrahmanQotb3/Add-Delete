import 'package:flutter/material.dart';
typedef onPress = void Function();
class CustomButton extends StatelessWidget{
  String Name;
  Color color;
  onPress press;
  CustomButton({super.key , required this.Name , required this.color , required this.press});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: press,
      child: Text(
        Name,
        style: TextStyle(
            fontSize: 20
        ),
      ),
    );
  }

}