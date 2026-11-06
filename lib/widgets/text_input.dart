import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

/// Campo de texto reutilizável do IFácil.
///
/// Uso:
/// ```dart
/// TextInputField(
///   label: 'Nome',
///   icone: Icons.person_outline,
///   textCapitalization: TextCapitalization.words,
///   validator: (valor) =>
///       (valor == null || valor.trim().isEmpty) ? 'Informe seu nome' : null,
///   onChanged: (texto) => setState(() => _nome = texto),
/// )
/// ```
class TextInputField extends StatefulWidget {
  final String label;
  final IconData? icone;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final bool autofocus;
  final bool enabled;

  const TextInputField({
    super.key,
    required this.label,
    this.icone,
    this.controller,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
    this.enabled = true,
  });

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  final _focusNode = FocusNode();

  // Usa o controller recebido; se não vier nenhum, cria um próprio.
  late final TextEditingController _controller;
  late final bool _controllerProprio;

  @override
  void initState() {
    super.initState();
    _controllerProprio = widget.controller == null;
    _controller = widget.controller ?? TextEditingController();
    // Reconstrói o campo a cada letra para mostrar ou esconder o botão "limpar".
    _controller.addListener(_atualizar);
  }

  @override
  void dispose() {
    _controller.removeListener(_atualizar);
    if (_controllerProprio) _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _atualizar() => setState(() {});

  void _limpar() {
    _controller.clear();
    widget.onChanged?.call('');
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      autofocus: widget.autofocus,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: widget.label,
        prefixIcon: widget.icone == null ? null : Icon(widget.icone),
        // Só aparece quando há texto digitado.
        suffixIcon: _controller.text.isEmpty || !widget.enabled
            ? null
            : IconButton(
                tooltip: 'Limpar',
                icon: const Icon(Icons.close),
                onPressed: _limpar,
              ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Pallete.greenColor, width: 2),
        ),
      ),
    );
  }
}