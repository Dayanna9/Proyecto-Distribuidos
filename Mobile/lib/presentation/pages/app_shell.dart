import 'package:flutter/material.dart';
import '../../core/widgets/sidebar.dart';
import 'home_page.dart';
import 'files_page.dart';
import 'shared_page.dart';
import 'photos_page.dart';
import 'videos_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});
  @override State<AppShell> createState()=>_AppShellState();
}
class _AppShellState extends State<AppShell> {
  int selected=1;
  final pages=const [HomePage(),FilesPage(),SharedPage(),PhotosPage(),VideosPage()];
  @override Widget build(BuildContext context)=>Scaffold(
    body:SafeArea(child:Row(children:[
      Sidebar(selected:selected,onSelect:(i)=>setState(()=>selected=i)),
      const VerticalDivider(width:1),
      Expanded(child:pages[selected]),
    ])),
  );
}
