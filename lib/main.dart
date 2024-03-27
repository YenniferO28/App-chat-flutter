import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentacion/configuracion/tema.dart';
import 'package:yes_no_app/presentacion/pantalla_chat.dart';
import 'package:yes_no_app/presentacion/providers/providers_chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ChatProvider();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ChatScreen(),
        theme: Tema().obtenerTema(color: 2),
        //theme: ThemeData(colorSchemeSeed: colorefecto),
      ),
    );
  }
}
