import '../screens/screens.dart';
class Routes {
  static final rutaInicial = "/home";
  static final rutas = {
    "/home": (context)=>ScreenHome(),
    "/add_tareas": (context)=>ScreenAddTarea(),
  };
}