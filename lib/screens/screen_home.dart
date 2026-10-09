import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registro_de_tareas/controllers/controller_tareas.dart';
import 'package:registro_de_tareas/widgets/cartas.dart';

class ScreenHome extends StatelessWidget{
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text("Mis Tareas"),
        actions: [
          Row(
            spacing: 20,
            children: [
              Icon(Icons.search),
              Icon(Icons.account_circle_outlined),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pendientes"),
                Text("${ControllerTareas.tareas.length} tareas")
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ControllerTareas.tareas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Cartas(descripcion: ControllerTareas.tareas[index].descripcion ?? "", titulo: ControllerTareas.tareas[index].titulo),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacementNamed(context, "/add_tareas");
      }, child: Icon(Icons.add),),
    );
  }

}