import 'package:flutter/material.dart';
// --- PÁGINA 3 ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera página Andrea Roldan 0679', style: TextStyle(color: Color(0xFFFFB2E1), fontFamily: 'Comic Sans MS')),
        backgroundColor: Colors.black, // FONDO NEGRO
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent, // AZUL CLARO
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: const Center(
                child: Text('¡Fin!', style: TextStyle(fontSize: 22, color: Colors.black)),
              ),
            ),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text('Volver al Inicio', style: TextStyle(color: Colors.redAccent, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}