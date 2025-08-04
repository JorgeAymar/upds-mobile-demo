import 'package:flutter/material.dart';

class AcademicProfileDataPage extends StatelessWidget {
  const AcademicProfileDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos del Perfil de Académico'),
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
            Text('Nombre: Dra. Ana García', style: TextStyle(fontSize: 16)),
            Text('ID: 987654', style: TextStyle(fontSize: 16)),
            Text('Correo: ana.garcia@upds.edu', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text(
              'Información Académica',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Departamento: Ciencias de la Computación', style: TextStyle(fontSize: 16)),
            Text('Cargo: Catedrática', style: TextStyle(fontSize: 16)),
            Text('Especialidad: Inteligencia Artificial', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
