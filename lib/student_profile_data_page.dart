import 'package:flutter/material.dart';

class StudentProfileDataPage extends StatelessWidget {
  const StudentProfileDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos del Perfil de Estudiante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Información Personal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Nombre: Juan Pérez', style: TextStyle(fontSize: 16)),
            Text('ID: 123456', style: TextStyle(fontSize: 16)),
            Text('Correo: juan.perez@upds.edu', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text(
              'Información Académica',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Carrera: Ingeniería de Sistemas', style: TextStyle(fontSize: 16)),
            Text('Semestre: 5to', style: TextStyle(fontSize: 16)),
            Text('Promedio: 8.7', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
