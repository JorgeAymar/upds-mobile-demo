import 'package:flutter/material.dart';

class FictionalSchedulePage extends StatelessWidget {
  const FictionalSchedulePage({super.key});

  final List<Map<String, String>> _schedule = const [
    {
      'day': 'Lunes',
      'time': '08:00 - 09:30',
      'subject': 'Matemáticas I',
      'classroom': 'Aula 101'
    },
    {
      'day': 'Lunes',
      'time': '10:00 - 11:30',
      'subject': 'Programación I',
      'classroom': 'Laboratorio 3'
    },
    {
      'day': 'Martes',
      'time': '09:00 - 10:30',
      'subject': 'Física General',
      'classroom': 'Aula 205'
    },
    {
      'day': 'Miércoles',
      'time': '08:00 - 09:30',
      'subject': 'Matemáticas I',
      'classroom': 'Aula 101'
    },
    {
      'day': 'Miércoles',
      'time': '14:00 - 15:30',
      'subject': 'Química Orgánica',
      'classroom': 'Laboratorio 1'
    },
    {
      'day': 'Jueves',
      'time': '10:00 - 11:30',
      'subject': 'Programación I',
      'classroom': 'Laboratorio 3'
    },
    {
      'day': 'Viernes',
      'time': '09:00 - 10:30',
      'subject': 'Física General',
      'classroom': 'Aula 205'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horarios Ficticios'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _schedule.length,
        itemBuilder: (context, index) {
          final entry = _schedule[index];
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
                    'Materia: ${entry['subject']}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Aula: ${entry['classroom']}',
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
