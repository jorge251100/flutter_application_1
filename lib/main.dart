import 'package:flutter/material.dart'; // sSe importa el paquete flutter/material.dart, que es necesario para usar las clases y widgets de Flutter, incluidos los widgets de material design que se utilizan en la interfaz de usuario.
class Counter extends StatefulWidget {//Se define una clase llamada Counter que extiende StatefulWidget. Esto crea un widget "Stateful" llamado Counter
  @override
  State<Counter> createState() => _CounterState();  //La función createState() devuelve una instancia de _CounterState, que es la clase que contiene el estado mutable y la lógica para este widget.
}
class _CounterState extends State<Counter> { //clase privada que extiende State<Counter>
  int counter = 0; //Inicializa en 0
  void incrementCounter() {  //Creamos el metodo para incrementar el contador
    setState(() { //indica a Flutter que el estado ha cambiado y que la interfaz de usuario debe actualizarse.
      counter++;  //suma el contador en uno
    });
  }
  @override
  Widget build(BuildContext context) { //Ocupamos build para construir la interfaz del usuario, Buildcontext contiene info de el arbol de widgets
    return Scaffold(  //define la estructura básica de la pantalla.
      appBar: AppBar(  //Para la barra de navegación
        title: Text('Counter'),
      ),
      body: Center( //contiene un Text en el centro de la pantalla que muestra el valor del contador
        child: Text(
          'Counter: $counter',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(  //Es un botón flotante que recibe a la funcion que creamos cuando se presione el botón
        onPressed: incrementCounter,  //Asi se incrementa el contador 
        tooltip: 'Increment',  //Muestra un icono de suma
        child: Icon(Icons.add),
      ),
    );
  }
}
void main() {  //Es la función principal de la app y manda a llamar a MaterialApp y definimos counter como pantalla principañ
  runApp(MaterialApp(
    home: Counter(),
  ));
}
