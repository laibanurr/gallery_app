import 'package:flutter/material.dart';

class QuickActionRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const QuickActionRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: .min,
      children: [
        Column(
          children: [
            circleContainer(icon),
            const SizedBox(height: 10),
            labelText(text),
          ],
        )
      ],
    );
  }
}
Widget circleContainer(IconData icon){
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius:16 ,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                  
                )]
      ),
      child: Icon(icon,
      color: Colors.black,
      size: 17,
      
       ) ,

    );
}

Widget labelText(String text){
  return Text(text,
  style:  TextStyle(
    color: Colors.black,
    fontFamily: 'Satoshi',
    fontSize: 14,

  ),);
}