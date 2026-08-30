import 'package:flutter/material.dart';
import '../../data/mock_data.dart';

class FilesPage extends StatefulWidget {
  const FilesPage({super.key});
  @override State<FilesPage> createState()=>_FilesPageState();
}
class _FilesPageState extends State<FilesPage> {
  String q='';
  @override Widget build(BuildContext context) {
    final files=MockData.files.where((f)=>f.name.toLowerCase().contains(q.toLowerCase())).toList();
    return Padding(padding:const EdgeInsets.all(24),child:Column(children:[
      TextField(onChanged:(v)=>setState(()=>q=v),decoration:const InputDecoration(hintText:'Buscar',prefixIcon:Icon(Icons.search))),
      const SizedBox(height:20),
      Row(children:[
        Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
          Text('Mis archivos',style:Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height:4),const Text('Selecciona o arrastra archivos desde tu equipo.',style:TextStyle(color:Color(0xFF71717A))),
        ])),
        OutlinedButton.icon(onPressed:(){},icon:const Icon(Icons.refresh),label:const Text('Recargar')),
        const SizedBox(width:8),
        FilledButton.icon(onPressed:(){},icon:const Icon(Icons.upload_file),label:const Text('Seleccionar archivos')),
      ]),
      const Divider(height:32),
      Container(height:100,width:double.infinity,decoration:BoxDecoration(
        border:Border.all(color:const Color(0xFFD4D4D8)),borderRadius:BorderRadius.circular(10)),
        child:const Center(child:Text('Arrastra y suelta aquí',style:TextStyle(color:Color(0xFF71717A))))),
      const SizedBox(height:15),
      Row(children:const [
        SizedBox(width:38),Expanded(flex:5,child:Text('Nombre')),Expanded(flex:2,child:Text('Tamaño')),
        Expanded(flex:2,child:Text('Fecha')),SizedBox(width:40)
      ]),
      const Divider(height:1),
      Expanded(child:ListView.builder(itemCount:files.length,itemBuilder:(c,i)=>_FileRow(files[i]))),
    ]));
  }
}
class _FileRow extends StatelessWidget {
  final dynamic f;
  const _FileRow(this.f);
  @override Widget build(BuildContext c)=>Container(
    padding:const EdgeInsets.symmetric(horizontal:8,vertical:14),
    decoration:const BoxDecoration(border:Border(bottom:BorderSide(color:Color(0xFFE4E4E7)))),
    child:Row(children:[
      Icon(f.type=='zip'?Icons.archive_outlined:Icons.insert_drive_file_outlined),
      const SizedBox(width:10),Expanded(flex:5,child:Text(f.name,maxLines:2,overflow:TextOverflow.ellipsis,style:const TextStyle(fontWeight:FontWeight.w600))),
      Expanded(flex:2,child:Text(f.size,style:const TextStyle(color:Color(0xFF71717A)))),
      if(MediaQuery.sizeOf(c).width>600)Expanded(flex:2,child:Text(f.date,style:const TextStyle(color:Color(0xFF71717A)))),
      const Icon(Icons.more_horiz),
    ]),
  );
}
