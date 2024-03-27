import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentacion/providers/providers_chat.dart';

class CampoEnvioMensajes extends StatelessWidget {
  const CampoEnvioMensajes({super.key});

  @override
  Widget build(BuildContext context) {
    ChatProvider chat_provider = context.watch<ChatProvider>();

    final TextEditingController controlador_campo_mensajes =
        TextEditingController();
    final FocusNode foco_campo_mensajes = FocusNode();

    ColorScheme esquema_color = Theme.of(context).colorScheme;

    OutlineInputBorder estilo_borde_campo_texto = OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: BorderSide(
          color: esquema_color.secondary,
        ));

    InputDecoration decoracion_campo_texto = InputDecoration(
        enabledBorder: estilo_borde_campo_texto,
        focusedBorder: estilo_borde_campo_texto,
        hintText: 'preguntar con "?" al final',
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            print(
                'Petro... en este salon todos te amamos!!! : ${controlador_campo_mensajes.text}');
            chat_provider.enviarMensaje(controlador_campo_mensajes.text);
            controlador_campo_mensajes.clear();
          },
        ));

    return TextFormField(
      focusNode: foco_campo_mensajes,
      controller: controlador_campo_mensajes,
      decoration: decoracion_campo_texto,
      onFieldSubmitted: (value) {
        print('onFieldSubmitted $value');
        chat_provider.enviarMensaje(value);
        controlador_campo_mensajes.clear();
        foco_campo_mensajes.requestFocus();
      },
    );
  }
}
