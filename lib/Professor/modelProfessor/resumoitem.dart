import 'package:flutter/material.dart';



class ResumoItem extends StatelessWidget {
  final String valor;
  final String legenda;
  final bool temSeta;

  const ResumoItem({
    super.key,
    required this.valor,
    required this.legenda,
    this.temSeta = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              valor,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            if (temSeta) ...[
              const SizedBox(width: 4),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 18,
              ),
            ],
          ],
        ),
        const SizedBox(height: 4),
        Text(
          legenda,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}