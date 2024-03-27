import 'package:flutter/material.dart';

class MiMensajeBurbuja extends StatelessWidget {
  final String textomensaje;

  const MiMensajeBurbuja({super.key, required this.textomensaje});

  @override
  Widget build(BuildContext context) {
    ColorScheme esquema_color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            decoration: BoxDecoration(
                color: /*Colors.blue*/ esquema_color.secondary,
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textomensaje,
                style: const TextStyle(color: Colors.white),
              ),
            )),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
