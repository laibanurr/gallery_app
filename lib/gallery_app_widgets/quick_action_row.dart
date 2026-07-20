import 'package:flutter/material.dart';

class QuickActionRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const QuickActionRow({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisSize: .min,
          children: [
            circleContainer(icon),
            const SizedBox(height: 10),
            labelText(text),
          ],
        ),
      ),
    );
  }
}

Widget circleContainer(IconData icon) {
  return Container(
    width: 58,
    height: 58,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.04),
          blurRadius: 16,
          spreadRadius: 0,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Icon(icon, color: Colors.black, size: 20),
  );
}

Widget labelText(String text) {
  return Text(
    text,
    style: TextStyle(color: Colors.black, fontFamily: 'Satoshi', fontSize: 14),
  );
}
