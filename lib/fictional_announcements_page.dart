import 'package:flutter/material.dart';

class FictionalAnnouncementsPage extends StatelessWidget {
  const FictionalAnnouncementsPage({super.key});

  final List<Map<String, String>> _announcements = const [
    {
      'title': 'Recordatorio: Inscripciones Abiertas',
      'date': '01 de Agosto, 2025',
      'content': 'Se les recuerda a todos los estudiantes que el período de inscripción para el próximo semestre ya está abierto. ¡No te quedes sin tu cupo!'
    },
    {
      'title': 'Charla sobre Oportunidades de Pasantías',
      'date': '28 de Julio, 2025',
      'content': 'Invitamos a todos los estudiantes interesados en realizar pasantías a nuestra charla informativa el 10 de agosto en el auditorio principal.'
    },
    {
      'title': 'Mantenimiento de Plataforma Virtual',
      'date': '25 de Julio, 2025',
      'content': 'Informamos que la plataforma virtual estará en mantenimiento el día 5 de agosto de 2025, de 00:00 a 06:00 AM. Agradecemos su comprensión.'
    },
    {
      'title': 'Concurso de Innovación Tecnológica',
      'date': '20 de Julio, 2025',
      'content': '¡Participa en nuestro concurso anual de innovación! Presenta tus ideas y proyectos tecnológicos. Fecha límite de inscripción: 15 de agosto.'
    },
    {
      'title': 'Resultados de Exámenes Finales',
      'date': '15 de Julio, 2025',
      'content': 'Los resultados de los exámenes finales del semestre anterior ya están disponibles en el sistema académico. Revisa tu perfil de estudiante.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anuncios Ficticios'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _announcements.length,
        itemBuilder: (context, index) {
          final announcement = _announcements[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    announcement['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    announcement['date']!,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    announcement['content']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
