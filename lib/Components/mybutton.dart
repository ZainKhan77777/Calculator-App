import 'package:flutter/material.dart';
import 'package:calculatorapp/contants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress ;
  const MyButton({
    this.title ='',
    this.color = borderColor,
    required this.onPress,
    Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color : color,
            ),
            child: Center(child: Text(title, style: textstyle, )),
          ),
        ),
      ),
    );
  }
}
