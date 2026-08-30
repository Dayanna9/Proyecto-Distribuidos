import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text('Inicio', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 5),
          const Text('Bienvenido a UPB-CIENTÍFICA',
              style: TextStyle(color: Color(0xFF71717A))),
          const SizedBox(height: 25),
          Wrap(spacing: 14, runSpacing: 14, children: const [
            _Card(Icons.folder_outlined, 'Mis archivos',
                'Administra tus archivos.'),
            _Card(Icons.photo_library_outlined, 'Fotos',
                'Explora tus fotografías.'),
            _Card(
                Icons.video_library_outlined, 'Videos', 'Accede a tus videos.'),
            _Card(Icons.sync_outlined, 'Sincronización',
                'Sincroniza tu información.'),
          ]),
        ],
      );
}

class _Card extends StatelessWidget {
  final IconData icon;
  final String title, text;
  const _Card(this.icon, this.title, this.text);
  @override
  Widget build(BuildContext c) => SizedBox(
      width: 250,
      height: 145,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xFFE4E4E7))),
        child: Padding(
            padding: const EdgeInsets.all(18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(icon),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(text, style: const TextStyle(color: Color(0xFF71717A))),
            ])),
      ));
}
