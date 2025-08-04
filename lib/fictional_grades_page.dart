import 'package:flutter/material.dart';

class FictionalGradesPage extends StatelessWidget {
  const FictionalGradesPage({super.key});

  final List<Map<String, String>> _grades = const [
    {'subject': 'Matemáticas I', 'grade': '85'},
    {'subject': 'Física General', 'grade': '78'},
    {'subject': 'Programación I', 'grade': '92'},
    {'subject': 'Química Orgánica', 'grade': '70'},
    {'subject': 'Historia Universal', 'grade': '88'},
    {'subject': 'Literatura Española', 'grade': '90'},
    {'subject': 'Inglés Técnico', 'grade': '82'},
    {'subject': 'Educación Física', 'grade': '95'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calificaciones Ficticias'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _grades.length,
        itemBuilder: (context, index) {
          final grade = _grades[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4.0,
            child: ListTile(
              leading: const Icon(Icons.assignment, color: Colors.blue),
              title: Text(
                grade['subject']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: Text(
                grade['grade']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: int.parse(grade['grade']!) >= 70 ? Colors.green : Colors.red,
                ),
              ),
              onTap: () {
                // Opcional: mostrar más detalles al tocar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Detalles de ${grade['subject']}: Calificación ${grade['grade']}'),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
