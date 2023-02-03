import 'package:flutter/material.dart';

class NeuBotton extends StatelessWidget {
  final onTap;

  bool isBottonPressed;
  NeuBotton({super.key, this.onTap, required this.isBottonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => onTap,
      onTapUp: (_) => onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 160,
        width: 160,
        child: Icon(
          Icons.favorite,
          size: 60,
          color: isBottonPressed ? Colors.red[200] : Colors.red[400],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: isBottonPressed
                  ? Colors.grey.shade200
                  : Colors.grey.shade300),
          boxShadow: isBottonPressed
              ? [
                  //no shadow
                ]
              : [
                  //darker shadow on bottom right
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  //lighter shadow on top left
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
        ),
      ),
    );
  }
}
