import 'package:flutter/material.dart';

class CLickButton extends StatefulWidget {
  const CLickButton({super.key});

  @override
  State<CLickButton> createState() => _CLickButtonState();
}

class _CLickButtonState extends State<CLickButton> {
  double _padding = 6.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _padding = 0.0;
        });
      },
      onTapUp: (_) {
        setState(() {
          _padding = 6.0;
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.only(bottom: _padding),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        duration: const Duration(milliseconds: 100),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Click me',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
