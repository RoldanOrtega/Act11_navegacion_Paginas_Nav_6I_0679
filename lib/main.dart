import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const MiAppComic());
}

class MiAppComic extends StatelessWidget {
  const MiAppComic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación Flutter Comic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Forzamos el estilo de texto tipo "Comic" globalmente
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Comic Sans MS', fontWeight: FontWeight.bold),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaInicial(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}