import 'package:flutter/material.dart';
import '../../data/mock_data.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});
  @override
  Widget build(BuildContext c) => Padding(
      padding: const EdgeInsets.all(24),
      child: Column(children: [
        Row(children: [
          const Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Fotos',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('Explora y organiza tus fotografías.',
                    style: TextStyle(color: Color(0xFF71717A)))
              ])),
          FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_photo_alternate_outlined),
              label: const Text('Subir foto'))
        ]),
        const Divider(height: 35),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 230,
              mainAxisExtent: 220,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14),
          itemCount: MockData.photos.length,
          itemBuilder: (c, i) => _MediaCard(MockData.photos[i].title,
              MockData.photos[i].date, Icons.image_outlined),
        ))
      ]));
}

class _MediaCard extends StatelessWidget {
  final String title, date;
  final IconData icon;
  const _MediaCard(this.title, this.date, this.icon);
  @override
  Widget build(BuildContext c) => Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFE4E4E7))),
      clipBehavior: Clip.antiAlias,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: Container(
                width: double.infinity,
                color: const Color(0xFFF4F4F5),
                child: Icon(icon, size: 58, color: const Color(0xFFA1A1AA)))),
        Padding(
            padding: const EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(date,
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xFF71717A)))
            ]))
      ]));
}
