import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input(this.name, {super.key, this.obscureText = false});

  final String name;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: name,
        ),
      ),
    );
  }
}

class TextFieldExampleApp extends StatelessWidget {
  const TextFieldExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Obscured Textfield')),
        body: const Center(child: Input('senha')),
      ),
    );
  }
}

void main() => runApp(const TextFieldExampleApp());