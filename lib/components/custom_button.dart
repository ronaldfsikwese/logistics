import 'package:flutter/material.dart';

/// This is a custom button theme
/// It accepts both a simple text and icon button
/// and allows foreground, background and border color control
class CustomButton extends StatelessWidget{
  final Color foregroundColor, backgroundColor, borderColor;
  final String? text;
  final IconData? icon;
  final bool? isIcon;
  final VoidCallback onPressed;

  const CustomButton({super.key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.onPressed,
    required this.borderColor,
    this.text="I am a button",
    this.icon,
    this.isIcon=false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.maxFinite,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
            side: MaterialStateProperty.all(
                BorderSide(width: 1, color: borderColor)
            ),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(foregroundColor),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 24)),
            textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700))
        ),
        child: isIcon==true?Center(child: _bothTextIcon(text, icon, foregroundColor)):
        Center(child: Text(text!)),
      ),
    );
  }

  // For both text and icon to show
  Widget _bothTextIcon(String? text, IconData? icon, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(icon, color: color),
        ),
        Text(text!),

      ],
    );
  }
}

