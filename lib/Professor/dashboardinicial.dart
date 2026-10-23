import 'package:app_ifacil/Professor/modelProfessor/resumoitem.dart';
import 'package:app_ifacil/Professor/questoes.dart';
import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';
import 'package:app_ifacil/Professor/modelProfessor/buildActionCard.dart';



class DashboardInicial extends StatefulWidget {
  const DashboardInicial({super.key});

  State<DashboardInicial> createState() => _DashboardInicialState();
}

class _DashboardInicialState extends State<DashboardInicial>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
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
          ),

          Row(
            children: [
              Expanded(
                  child: Buildactioncard(
                      icon: Icons.add,
                      label: 'Nova Questão',
                      onTap: (){
                        // ação para ir para a página de Questões
                      }
                  ),
              ),
              const SizedBox( width: 10,),
              Expanded(
                  child: Buildactioncard(
                      icon: Icons.archive_outlined,
                      label: 'Novo Materia',
                      onTap: () {
                        // ação para a página de novo material
                      }
                  )
              ),
              const SizedBox( width: 10,),
              Expanded(
                  child: Buildactioncard(
                      icon: Icons.groups_outlined,
                      label: 'Ver Turmas',
                      onTap: () {
                        // ação para ir em algum lugar
                      }
                  )
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Resumo da Turma',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Pallete.blackColor
            ),
          ),
          const SizedBox(height: 10),

          // modularixar esse conteiner
          Container(
            padding: const EdgeInsets.symmetric( vertical: 16.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: Pallete.borderColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ResumoItem(
                valor: '8',
                legenda: 'alunos',
                temSeta: true, // Este vai mostrar a setinha para baixo
                ),

                // Linha divisória sutil
                Container(height: 30, width: 1, color: Colors.white30),

                // Usando o componente para "Presença"
                const ResumoItem(
                valor: '86%',
                legenda: 'presença',
                ),

                // Linha divisória sutil
                Container(height: 30, width: 1, color: Colors.white30),

                // Usando o componente para "Nota média"
                const ResumoItem(
                valor: '7.8',
                legenda: 'nota média',)
              ],
            ),
          )
        ],
      ),
    );
  }
}