import 'package:flutter/material.dart';
import '../../data/mock_data.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});
  @override
  Widget build(BuildContext c) => Padding(
      padding: const EdgeInsets.all(24),
      child: Column(children: [
        const Align(
            alignment: Alignment.centerLeft,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Videos',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Reproduce tus videos mediante el servicio de streaming.',
                  style: TextStyle(color: Color(0xFF71717A)))
            ])),
        const Divider(height: 35),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 230,
              mainAxisExtent: 220,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14),
          itemCount: MockData.videos.length,
          itemBuilder: (c, i) =>
              _Video(MockData.videos[i].title, MockData.videos[i].date),
        ))
      ]));
}

class _Video extends StatelessWidget {
  final String title, date;
  const _Video(this.title, this.date);
  @override
  Widget build(BuildContext c) => Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFE4E4E7))),
      child: Column(children: [
        Expanded(
            child: Container(
                width: double.infinity,
                color: const Color(0xFFF4F4F5),
                child: const Icon(Icons.play_circle_outline,
                    size: 58, color: Color(0xFFA1A1AA)))),
        Padding(
            padding: const EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(date,
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xFF71717A)))
            ]))
      ]));
}
