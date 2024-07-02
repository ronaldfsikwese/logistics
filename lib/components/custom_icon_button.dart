import 'package:flutter/material.dart';

/// This is a custom icon button theme
/// and allows foreground, background and border color control
class CustomIconButton extends StatelessWidget{
  final Color foregroundColor, backgroundColor, borderColor;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomIconButton({super.key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.onPressed,
    required this.borderColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),)),
            side: MaterialStateProperty.all(
                BorderSide(width: 1, color: borderColor)),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(foregroundColor)
        ),
      ),
    );
  }
}

