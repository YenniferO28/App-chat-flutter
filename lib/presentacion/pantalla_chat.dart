import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/dominio/mensajes.dart';
import 'package:yes_no_app/presentacion/componentes/campo_envio_mensajes.dart';
import 'package:yes_no_app/presentacion/componentes/mis_burbujas.dart';
import 'package:yes_no_app/presentacion/componentes/sus_burbujas.dart';
import 'package:yes_no_app/presentacion/providers/providers_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChatProvider chat_provider = context.watch<ChatProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/e/ef/Presidente_Gustavo_Petro_Urrego.jpg'),
          ),
        ),
        title: const Text('Amor Mio ♥♥♥'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              controller: chat_provider.controlador_lista_mensajes,
              itemCount: chat_provider.mensajes.length,
              itemBuilder: (context, index) {
                return chat_provider.mensajes[index].tipo == TipoMensaje.mio
                    ? MiMensajeBurbuja(
                        textomensaje: chat_provider.mensajes[index].texto,
                      )
                    : const SuMensajeBurbuja();
              },
            ),
          ),
          const CampoEnvioMensajes(),
        ],
      ),
    );
  }
}
