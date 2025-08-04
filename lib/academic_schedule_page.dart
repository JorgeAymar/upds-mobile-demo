import 'package:flutter/material.dart';

class AcademicSchedulePage extends StatelessWidget {
  const AcademicSchedulePage({super.key});

  final List<Map<String, String>> _academicSchedule = const [
    {
      'day': 'Lunes',
      'time': '07:00 - 08:30',
      'subject': 'Cálculo I (Grupo A)',
      'classroom': 'Aula 301'
    },
    {
      'day': 'Lunes',
      'time': '11:00 - 12:30',
      'subject': 'Álgebra Lineal (Grupo B)',
      'classroom': 'Aula 305'
    },
    {
      'day': 'Martes',
      'time': '08:00 - 09:30',
      'subject': 'Reunión de Departamento',
      'classroom': 'Sala de Juntas'
    },
    {
      'day': 'Martes',
      'time': '14:00 - 15:30',
      'subject': 'Tutorías (Horas de Oficina)',
      'classroom': 'Oficina 210'
    },
    {
      'day': 'Miércoles',
      'time': '07:00 - 08:30',
      'subject': 'Cálculo I (Grupo A)',
      'classroom': 'Aula 301'
    },
    {
      'day': 'Jueves',
      'time': '11:00 - 12:30',
      'subject': 'Álgebra Lineal (Grupo B)',
      'classroom': 'Aula 305'
    },
    {
      'day': 'Viernes',
      'time': '09:00 - 10:30',
      'subject': 'Seminario de Investigación',
      'classroom': 'Auditorio'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horarios Académicos Ficticios'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _academicSchedule.length,
        itemBuilder: (context, index) {
          final entry = _academicSchedule[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${entry['day']} - ${entry['time']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Actividad: ${entry['subject']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Lugar: ${entry['classroom']}',
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
