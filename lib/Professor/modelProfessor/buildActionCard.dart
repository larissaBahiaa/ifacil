import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

class Buildactioncard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const Buildactioncard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        padding: const EdgeInsets.symmetric( vertical: 16.0,horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.green.shade200,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
          border: Border.all(color: Colors.green.shade200,),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Pallete.blackColor, size: 28,),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Pallete.blackColor
              ),
            ),
          ],

        ),
      ),
    );
  }
}