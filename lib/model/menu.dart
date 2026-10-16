import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        icon: Image.asset('assets/images/iconmenu.png',
            width: 28, color: Colors.white),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }
}

class Aba extends StatelessWidget {
  const Aba({super.key});

  static const _itens = [
    (Icons.home, 'Início'),
    (Icons.description, 'Questões'),
    (Icons.menu_book, 'Materiais'),
    (Icons.group, 'Turmas'),
    (Icons.chat_bubble_outline, 'Mural'),
    (Icons.help, 'Ajuda'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(20),
              leading: Container(
                width: 60,
                height: 60,
                color: const Color(0xFFE6F4EA),
                alignment: Alignment.center,
                child: const Text('A',
                    style: TextStyle(
                        color: Pallete.greenColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const Divider(height: 1),
            for (final (icone, nome) in _itens)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 28),
                leading: Icon(icone, color: const Color.fromARGB(255, 72, 95, 82)),
                title: Text(nome, style: const TextStyle(fontSize: 17)),
                onTap: () => Navigator.pop(context),
              ),
          ],
        ),
      ),
    );
  }
}