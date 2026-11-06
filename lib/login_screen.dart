import 'package:app_ifacil/Professor/home.dart';
import 'package:app_ifacil/pallete.dart';
import 'package:app_ifacil/widgets/bg_button.dart';
import 'package:app_ifacil/widgets/button.dart';
import 'package:app_ifacil/widgets/greenbutton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Estados que mudam a tela:
  bool _carregando = false; // botão "Entrar com Email" mostra o spinner
  bool _mostrarTermos = false; // "Termos de uso" expande e recolhe o texto

  Future<void> _entrarComEmail() async {
    setState(() => _carregando = true);

    // Simula o tempo de uma autenticação. Troque pela real depois.
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;
    setState(() => _carregando = false);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfessorHome()),
    );
  }

  void _emBreve(String recurso) {
    if (_carregando) return; // ignora cliques durante o carregamento
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$recurso: em breve')));
  }

  void _alternarTermos() {
    setState(() {
      _mostrarTermos = !_mostrarTermos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Rolável: evita overflow em telas pequenas.
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset(
                'assets/images/logo_ifacil.png',
                width: 170,
                height: 170,
              ),
              const Text(
                'IFácil',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Pallete.greenColor,
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: 300,
                child: Center(
                  child: Text(
                    'Preparação inteligente para o IFMA',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Pallete.blackColor),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SocialButton(
                iconName: 'google',
                label: 'Entrar com Google',
                onPressed: () => _emBreve('Login com Google'),
              ),
              const SizedBox(height: 12),
              Greenbutton(
                label: 'Entrar com Email',
                carregando: _carregando,
                onPressed: _entrarComEmail,
              ),
              const SizedBox(height: 12),
              BgButton(
                label: 'Criar conta',
                onPressed: () => _emBreve('Criar conta'),
              ),
              const SizedBox(height: 80),
              const Text(
                'Ao continuar, você concorda com nossos',
                style: TextStyle(color: Pallete.blackColor),
              ),
              InkWell(
                onTap: _alternarTermos,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Termos de uso',
                      style: TextStyle(color: Pallete.greenColor),
                    ),
                    Icon(
                      _mostrarTermos ? Icons.expand_less : Icons.expand_more,
                      color: Pallete.greenColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 250),
                child: _mostrarTermos
                    ? const Padding(
                        padding: EdgeInsets.fromLTRB(32, 8, 32, 0),
                        child: Text(
                          // Texto de exemplo: substitua pelos termos reais.
                          'O IFácil é uma plataforma de estudos. Seus dados '
                          'são usados apenas para o funcionamento do app.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Pallete.blackColor,
                          ),
                        ),
                      )
                    : const SizedBox(width: double.infinity),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}