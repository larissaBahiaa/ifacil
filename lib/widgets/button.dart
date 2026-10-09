import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_ifacil/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconName;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.iconName,
    required this.label,
    this.horizontalPadding = 70,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset('assets/svgs/$iconName.svg', width: 25),
      label: Text(
        label,
        style: const TextStyle(color: Pallete.blackColor, fontSize: 17),
      ),

      style: TextButton.styleFrom(
        minimumSize: const Size(300, 25),
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 25,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Pallete.borderColor, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
