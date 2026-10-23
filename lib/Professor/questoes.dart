// aberto para desenvolvimento

import 'package:flutter/material.dart';

class Questoes extends StatelessWidget {
  const Questoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Vão ter questóes aqui futuramente')],
          )
          )
        ],
      );
  }
}