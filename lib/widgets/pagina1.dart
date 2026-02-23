import 'package:flutter/material.dart';
// --- PÁGINA 1 ---
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio 6I Andrea Roldan 0679', style: TextStyle(color: Colors.white, fontFamily: 'Comic Sans MS')),
        backgroundColor: const Color.fromARGB(255, 255, 42, 134), // ROSA OSCURO
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Página Inicial', 
              style: TextStyle(fontSize: 24, color: Colors.black)),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFAD1457)),
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              child: const Text('Ir a la Segunda Página', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}