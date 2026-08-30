import 'package:flutter/material.dart';
class SharedPage extends StatelessWidget {
  const SharedPage({super.key});
  @override Widget build(BuildContext c)=>const Padding(
    padding:EdgeInsets.all(24),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text('Compartidos',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
      SizedBox(height:5),Text('Archivos y recursos compartidos contigo.',style:TextStyle(color:Color(0xFF71717A))),
      Divider(height:35),Expanded(child:Center(child:Text('No hay archivos compartidos.',style:TextStyle(color:Color(0xFF71717A))))),
    ]),
  );
}
