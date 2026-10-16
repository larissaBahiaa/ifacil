import 'package:app_ifacil/pallete.dart';
import 'package:app_ifacil/widgets/bg_button.dart';
import 'package:app_ifacil/widgets/button.dart';
import 'package:app_ifacil/widgets/greenbutton.dart';
import 'package:flutter/material.dart';

import 'package:app_ifacil/login_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(
          child: Column(
            children: [
              SizedBox(
              height: 100,
            ),

              Image.asset(
                'assets/images/logo_ifacil.png',
                width: 170,
                height: 170),

              const Text(
              'IFácil',
              style: TextStyle(
                fontSize: 30,
                  fontWeight: FontWeight.bold,
                color: Pallete.greenColor
              ),
            ),

            SizedBox(height: 15),
            SizedBox(
                width: 300,
                child: Center(child: Text('Preparação inteligente para o IFMA', textAlign: TextAlign.center, style: TextStyle(fontSize: 22, color: Pallete.blackColor))),
            ),

            SizedBox(height: 30),
            SocialButton(iconName: 'google', label: 'Entrar com Google', onPressed: () {}),
            SizedBox(height:12),
            Greenbutton( label: 'Entrar com Email' , onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginInput()),
              );
            }),
            SizedBox(height: 12),
            BgButton( label: 'Criar conta', onPressed: () {}),
            SizedBox(height: 80),
            const Text('Ao continuar, você concorda com nossos', style: TextStyle(color: Pallete.blackColor)),
            const Text('Termos de uso', style: TextStyle(color: Pallete.greenColor)),
            SizedBox(height: 15),
            ],
          ),
        )],
      ),
    );
  }
}
