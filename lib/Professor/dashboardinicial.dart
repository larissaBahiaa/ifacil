import 'package:app_ifacil/Professor/questoes.dart';
import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

class DashboardInicial extends StatelessWidget {
  const DashboardInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Boa noite, professor"),
                SizedBox(height: 4), // Um respiro opcional entre os textos
                Text(
                  "Organizando os materiais?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Pallete.blackColor,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Questoes(), //
                ),
              );
            },
            child: const Text('+ Adicionar Questão'),
          ),
        ],
      ),
    );
  }
}