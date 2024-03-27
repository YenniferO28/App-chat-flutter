import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget {
  const SuMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme esquema_color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: /*Colors.blue*/ esquema_color.primary,
                borderRadius: BorderRadius.circular(40)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Burbuja con mensaje escrito por ti',
                style: TextStyle(color: Colors.white),
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        _Stiker()
      ],
    );
  }
}

class _Stiker extends StatelessWidget {
  const _Stiker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://i.pinimg.com/originals/d9/fc/f4/d9fcf4f4995e18ae4fb9c81fe55832dc.gif',
        width: 60,
        height: 80,
      ),
    );
  }
}
