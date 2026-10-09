import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registro_de_tareas/controllers/controller_tareas.dart';
import 'package:registro_de_tareas/modelos/tareas.dart';

class ScreenAddTarea extends StatefulWidget{
  const ScreenAddTarea({super.key});

  @override
  State<ScreenAddTarea> createState() => _ScreenAddTareaState();
}

class _ScreenAddTareaState extends State<ScreenAddTarea> {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(Icons.cancel_outlined),onTap: (){
              Navigator.pushReplacementNamed(context, "/home");
        },),
        title: Text("Nuevo Tarea"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Titulo de tarea"),
            TextField(
              controller: tituloController,
              decoration: InputDecoration(
                labelText: "¿Que necesitas hacer?",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Descripcion"),
                Text("Opcional")
              ],
            ),
            TextField(
              controller: descripcionController,
              decoration: InputDecoration(
                  labelText: "Agrega detalles o notas adicionales",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {});
              if(tituloController.text!=""){
                Tareas nuevaTarea = Tareas(titulo: tituloController.text,descripcion: descripcionController.text);
                ControllerTareas.agregarTarea(nuevaTarea);
                tituloController.clear();
                descripcionController.clear();
              }
            }, child: Text("Guardar Tareas")),
            ElevatedButton(onPressed: (){
              setState(() {});
              tituloController.clear();
              descripcionController.clear();
            }, child: Text("Cancelar"))
          ],
        ),
      ),
    );
  }
}