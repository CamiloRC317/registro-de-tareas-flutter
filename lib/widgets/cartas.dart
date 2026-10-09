import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartas extends StatelessWidget{
  final String titulo;
  final String descripcion;
  const Cartas({super.key,required this.descripcion,required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: 100,
          child: Row(
            spacing: 10,
            children: [
              Radio(value: "opcion1"),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$titulo",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1, overflow: TextOverflow.ellipsis,),
                    Text("$descripcion",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}