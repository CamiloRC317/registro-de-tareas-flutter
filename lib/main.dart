import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registro_de_tareas/routes/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.rutaInicial,
      routes: Routes.rutas,
    );
  }
}