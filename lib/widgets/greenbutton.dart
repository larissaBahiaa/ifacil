import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

class Greenbutton extends StatelessWidget {
  final String label;
  final double horizontalPadding;

  /// null = botão desabilitado (cinza).
  final VoidCallback? onPressed;

  /// true = mostra um spinner e o texto "Entrando..." mantendo o botão verde.
  final bool carregando;

  const Greenbutton({
    super.key,
    required this.label,
    this.horizontalPadding = 70,
    required this.onPressed,
    this.carregando = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // Durante o carregamento o clique é ignorado, mas o botão continua verde
      // (passar null aqui o deixaria cinza, como se estivesse desabilitado).
      onPressed: carregando ? () {} : onPressed,
      icon: carregando
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Pallete.backgroundColor,
              ),
            )
          : null,
      label: Text(
        carregando ? 'Entrando...' : label,
        style: const TextStyle(fontSize: 17),
      ),
      style: TextButton.styleFrom(
        minimumSize: const Size(300, 25),
        foregroundColor: Pallete.backgroundColor,
        backgroundColor: Pallete.greenColor,
        disabledForegroundColor: Colors.black45,
        disabledBackgroundColor: Pallete.borderColor,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}