import 'package:flutter/material.dart';

class CustomSignButton extends StatelessWidget {
  final Function onTap;
  final Widget child;

  const CustomSignButton({Key key, @required this.onTap, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customSignBttn();
  }

  ElevatedButton customSignBttn() {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(250, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: child,
    );
  }
}
