import 'package:flutter/material.dart';
import 'package:app_ifacil/pallete.dart';

class BgButton extends StatelessWidget {

  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;

  const BgButton({
    super.key,
    required this.label,
    this.horizontalPadding = 70,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      label: Text(
        label,
        style: const TextStyle(color: Pallete.greenColor, fontSize: 17),
      ),
      //oi
      style: TextButton.styleFrom(
        minimumSize: const Size(300, 25),
        backgroundColor: Pallete.backgroundColor ,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Pallete.greenColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
