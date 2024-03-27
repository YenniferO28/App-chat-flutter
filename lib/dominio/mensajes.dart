enum TipoMensaje { mio, suyo }

class Mensaje {
  final String texto;
  final String? url;
  final TipoMensaje tipo;

  Mensaje({required this.texto, this.url, required this.tipo});

  
}
