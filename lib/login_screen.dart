import 'package:app_ifacil/pallete.dart';
import 'package:app_ifacil/widgets/bg_button.dart';
import 'package:app_ifacil/widgets/button.dart';
import 'package:app_ifacil/widgets/greenbutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
              height: 50,
            ),

              Image.asset(
                'assets/images/logo_ifacil.png',
                width: 170,
                height: 170),

              const Text(
              'IFácil',
              style: TextStyle(
                fontSize: 20,
                color: Pallete.greenColor
              ),
            ),

            SizedBox(height: 15),
            const Text('Preparação inteligente para o IFMA', style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 29, 28, 28))),

            SizedBox(height: 50),
            SocialButton(iconName: 'google', label: 'Entrar com Google', onPressed: () {}),
            SizedBox(height:15),
            Greenbutton( label: 'Entrar com Email' , onPressed: () {}),
            SizedBox(height: 15),
            BgButton( label: 'Criar conta', onPressed: () {}),
            SizedBox(height: 15),
            const Text('Ao continuar, você concorda com nossos', style: TextStyle(color: Pallete.blackColor)),
            const Text('Termos de uso', style: TextStyle(color: Pallete.greenColor)),
            SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
