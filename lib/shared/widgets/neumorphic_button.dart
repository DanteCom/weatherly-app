import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NeumorphicCircleButton extends StatelessWidget {
  final Icon icon;
  const NeumorphicCircleButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(offset: Offset(1, 1), blurRadius: 0.5, color: Colors.white),
          BoxShadow(
            offset: Offset(-10, -10),
            blurRadius: 20,
            color: Color(0x50FFFFFF),
          ),
          BoxShadow(
            offset: Offset(10, 10),
            blurRadius: 20,
            color: Color(0xFF0D1431),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [Color(0xFF22243F), Color(0xFF686B85)],
        ),
      ),
      child: CupertinoButton(
        onPressed: () {},
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: icon,
        ),
      ),
    );
  }
}
