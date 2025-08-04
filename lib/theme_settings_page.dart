import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upds_app_demo/theme_provider.dart';

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración de Tema'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selecciona el Tema:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            RadioListTile<ThemeMode>(
              title: const Text('Modo Claro'),
              value: ThemeMode.light,
              groupValue: themeProvider.themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  themeProvider.toggleTheme(); // Asume que toggleTheme cambia entre claro y oscuro
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Modo Oscuro'),
              value: ThemeMode.dark,
              groupValue: themeProvider.themeMode,
              onChanged: (ThemeMode? value) {
                if (value != null) {
                  themeProvider.toggleTheme(); // Asume que toggleTheme cambia entre claro y oscuro
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
