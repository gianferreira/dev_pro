import 'package:flutter/material.dart';

class AprovacaoTextPasswordField extends StatefulWidget {
  const AprovacaoTextPasswordField({
    super.key,
    required this.label,
    required this.hintText,
    required this.maxLines,
    required this.minLines,
    required this.textInputAction,
    required this.textFieldController,
    required this.validator,
  });

  final String label;
  final String hintText;
  final int maxLines;
  final int minLines;
  final TextInputAction textInputAction;
  final TextEditingController textFieldController;
  final String? Function(String?) validator;

  @override
  State<AprovacaoTextPasswordField> createState() => _AprovacaoTextPasswordFieldState();
}

class _AprovacaoTextPasswordFieldState extends State<AprovacaoTextPasswordField> {
  late ValueNotifier<bool> visiblityController;

  @override
  void initState() {
    visiblityController = ValueNotifier(true);

    super.initState();
  }

  @override
  void dispose() {
    visiblityController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: visiblityController,
          builder: (context, isInvisible, child) {
            return TextFormField(
              controller: widget.textFieldController,
              textInputAction: widget.textInputAction,
              validator: widget.validator,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              obscureText: isInvisible,
              cursorColor: Colors.black,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      isInvisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                      color: const Color(0xFFC4C4C4),
                    ),
                    onPressed: () => visiblityController.value = !visiblityController.value,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
