import 'package:flutter/material.dart';

class AcademicSettingsPage extends StatelessWidget {
  const AcademicSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración Académico'),
      ),
      body: const Center(
        child: Text('Contenido de la página de Configuración para Académicos'),
      ),
    );
  }
}
