import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final int selected;
  final ValueChanged<int> onSelect;
  const Sidebar({super.key, required this.selected, required this.onSelect});

  @override
  Widget build(BuildContext context) => NavigationRail(
        selectedIndex: selected,
        onDestinationSelected: onSelect,
        extended: MediaQuery.sizeOf(context).width >= 700,
        minWidth: 72,
        minExtendedWidth: 210,
        indicatorColor: const Color(0xFFE4E4E7),
        leading: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 25),
          child:
              Text('Mi perfil', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        destinations: const [
          NavigationRailDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: Text('Inicio')),
          NavigationRailDestination(
              icon: Icon(Icons.folder_outlined),
              selectedIcon: Icon(Icons.folder),
              label: Text('Mis archivos')),
          NavigationRailDestination(
              icon: Icon(Icons.people_outline),
              selectedIcon: Icon(Icons.people),
              label: Text('Compartidos')),
          NavigationRailDestination(
              icon: Icon(Icons.photo_library_outlined),
              selectedIcon: Icon(Icons.photo_library),
              label: Text('Fotos')),
          NavigationRailDestination(
              icon: Icon(Icons.video_library_outlined),
              selectedIcon: Icon(Icons.video_library),
              label: Text('Videos')),
        ],
      );
}
