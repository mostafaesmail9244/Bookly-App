
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: customOutLIneInputBorder(),
          enabledBorder: customOutLIneInputBorder(),
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
          hintText: 'Search'),
    );
  }

  OutlineInputBorder customOutLIneInputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white.withOpacity(0.8)));
}
