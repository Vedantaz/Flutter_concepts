import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final Color? color;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const MyCustomButton({
    super.key,
    required this.text,
    this.color = Colors.blue,
    this.icon,
    this.textStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!(); // will not be null ever
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 76, 54, 244),
          foregroundColor: Colors.white,
          shadowColor: color,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(11),
            bottomLeft: Radius.circular(11),
          ))),
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  text,
                  style: textStyle,
                ),
              ],
            )
          : Text(
              text,
              style: textStyle,
            ),
    );
  }
}
