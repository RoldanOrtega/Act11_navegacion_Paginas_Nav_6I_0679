import 'package:flutter/material.dart';
// --- PÁGINA 2 ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título en color NEGRO
        title: const Text('Segunda página Andrea Roldan 0679', style: TextStyle(color: Colors.black, fontFamily: 'Comic Sans MS')),
        // NUEVO COLOR ROSA (Diferente al fondo y a la Pág 1)
        backgroundColor: const Color(0xFFFF69B4), // Hot Pink
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://picsum.photos/300/200?random=10',
                height: 180,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF69B4)),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text('Ir a la Tercera Página', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ],
        ),
      ),
    );
  }
}