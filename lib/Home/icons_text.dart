import 'package:flutter/material.dart';

class IconsandText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;
  



  const IconsandText({Key? key,
   required this.icon,
   required this.text,
   required this.color,
   required this.iconColor }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox( width: 6,),
        Text(text, style: TextStyle(color: color)),
      ],
    );
  }
}