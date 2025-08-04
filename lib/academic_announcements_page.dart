import 'package:flutter/material.dart';

class AcademicAnnouncementsPage extends StatelessWidget {
  const AcademicAnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publicar Anuncio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Crear Nuevo Anuncio',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Título del Anuncio',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TextField(
                maxLines: null, // Permite múltiples líneas
                expands: true, // Permite que el TextField se expanda verticalmente
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  labelText: 'Contenido del Anuncio',
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para publicar el anuncio
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Anuncio publicado (simulado)')),
                );
                Navigator.pop(context); // Regresar a la pantalla anterior
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Botón de ancho completo
              ),
              child: const Text(
                'Publicar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
