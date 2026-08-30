import '../models/file_item.dart';
import '../models/media_item.dart';

class MockData {
  static const files = [
    FileItem(name:'InformeDistribuidos.docx', size:'22.4 KB', date:'29/07/2026', type:'doc'),
    FileItem(name:'Parte1.zip', size:'4.9 MB', date:'11/08/2026', type:'zip'),
    FileItem(name:'Parte1.zip', size:'4.9 MB', date:'11/08/2026', type:'zip'),
    FileItem(name:'Requerimientos MOVILES - RNoFuncionales (2).pdf', size:'57.2 KB', date:'25/05/2026', type:'pdf'),
    FileItem(name:'sockets.zip', size:'69.6 KB', date:'28/07/2026', type:'zip'),
  ];
  static const photos = [
    MediaItem(title:'Fotografía 1', date:'18/08/2026'),
    MediaItem(title:'Fotografía 2', date:'17/08/2026'),
    MediaItem(title:'Fotografía 3', date:'12/08/2026'),
    MediaItem(title:'Fotografía 4', date:'05/08/2026'),
  ];
  static const videos = [
    MediaItem(title:'Video 1', date:'18/08/2026'),
    MediaItem(title:'Video 2', date:'10/08/2026'),
    MediaItem(title:'Video 3', date:'02/08/2026'),
  ];
}
