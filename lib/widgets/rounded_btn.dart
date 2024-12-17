import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// StatelessWidget will contain build function which will be returned
// In StatefulWidget will contain a state that will updated on every state update, and the build function will be inside the state

class RoundedBtn extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedBtn(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.cyan,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!(); // need ! so that we gurante confirm that this won't be null
      },
      style: ElevatedButton.styleFrom(
          shadowColor: bgColor,
          backgroundColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)))),
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
    );
  }
}
