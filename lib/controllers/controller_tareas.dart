import 'package:registro_de_tareas/modelos/tareas.dart';

class ControllerTareas {
  static List<Tareas> tareas = [
    Tareas(titulo: "Completar practicas flutter", descripcion: "La mejor practica"),
    Tareas(titulo: "Diseñar interfaz material", descripcion: "La mejor practica"),
    Tareas(titulo: "Revisar documentacion navegacion"),
  ];
  static void agregarTarea(Tareas tarea){
    tareas.add(tarea);
  }
}