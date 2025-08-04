import 'package:flutter/material.dart';
import 'package:upds_app_demo/academic_announcements_page.dart';
import 'package:upds_app_demo/academic_schedule_page.dart';
import 'package:upds_app_demo/academic_profile_page.dart';
import 'package:upds_app_demo/academic_settings_page.dart';
import 'package:upds_app_demo/theme_settings_page.dart';
import 'package:upds_app_demo/theme_settings_page.dart';
import 'package:upds_app_demo/main.dart'; // Importa la página de login

class AcademicDashboard extends StatefulWidget {
  const AcademicDashboard({super.key});

  @override
  State<AcademicDashboard> createState() => _AcademicDashboardState();
}

class _AcademicDashboardState extends State<AcademicDashboard> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    _DashboardContent(), // Contenido original del dashboard
    const AcademicProfilePage(),
    const ThemeSettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Académico'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
            tooltip: 'Cerrar Sesión',
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bienvenido Académico!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Navegar a la sección de Publicar Anuncios
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AcademicAnnouncementsPage()));
          },
          child: const Text('Publicar Anuncio'),
        ),
        ElevatedButton(
          onPressed: () {
            // Navegar a la sección de Horarios
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AcademicSchedulePage()));
          },
          child: const Text('Ver Horario'),
        ),
      ],
    );
  }
}
