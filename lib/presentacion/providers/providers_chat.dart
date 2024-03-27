import 'package:flutter/material.dart';
import 'package:yes_no_app/dominio/mensajes.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController controlador_lista_mensajes = ScrollController();

  List<Mensaje> mensajes = [
    Mensaje(texto: "Hola mi petris", tipo: TipoMensaje.mio),
    Mensaje(
        texto: "Hoy tambien estas salvando el pais?", tipo: TipoMensaje.mio),
  ];

  Future<void> enviarMensaje(String mensaje) async {
    //print('mensaje enviado $mensaje');
    mensajes.add(Mensaje(texto: mensaje, tipo: TipoMensaje.mio));
    notifyListeners();
    _moverScrollAlFinal();
  }

  Future<void> _moverScrollAlFinal() async {
    controlador_lista_mensajes.animateTo(
        controlador_lista_mensajes.position.maxScrollExtent,
        duration: Duration(milliseconds: 50),
        curve: Curves.easeIn);
  }
}
