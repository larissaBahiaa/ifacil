import 'package:app_ifacil/model/bottonNavBar.dart';
import 'package:app_ifacil/pallete.dart';
import 'package:app_ifacil/model/menu.dart';
import 'package:flutter/material.dart';
import 'package:app_ifacil/Professor/dashboardinicial.dart';
class ProfessorHome extends StatelessWidget {
  const ProfessorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Aba(), // 1. o menu lateral
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            color: Pallete.greenColor,
            child: SafeArea(
              child: Row(
                children: [
                  const MenuButton(), // 2. o botão que abre o menu
                  const Spacer(),
                  Image.asset('assets/images/logo_ifacil.png', width: 40),
                  const SizedBox(width: 10),
                  const Text(
                    'IFácil',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 48,
                  ), // equilibra para centralizar o logo
                ],
              ),
            ),
          ),
          const DashboardInicial()
        ],
      ),
      bottomNavigationBar: const Bottonnavbar(),
    );
  }
}
