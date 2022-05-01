import 'package:flutter/material.dart';

void main() => runApp(AppClass());

class AppClass extends StatelessWidget {
  const AppClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Class",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Empresa _facebook = new Empresa("facebook", "Mark Zuckerberg", 50000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Class"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_facebook.nombre),
            Text(_facebook.propietario),
            Text(_facebook.ingresoAnual.toString()),
          ],
        ),
      ),
    );
  }
}

class Empresa {
  late String nombre;
  late String propietario;
  late int ingresoAnual;

  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
