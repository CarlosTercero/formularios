import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:phone_number/phone_number.dart';

class carlosForm2 extends StatefulWidget {
  const carlosForm2({Key? key}) : super(key: key);
  @override
  State<carlosForm2> createState() => _carlosForm2();
}

class _carlosForm2 extends State<carlosForm2> {
  final _formKey = GlobalKey<FormBuilderState>();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.looks_one,
                          color: Colors.blue,
                        ),
                        Text("Personal", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        Text("Contact", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                        Text("Upload", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16), // Espacio entre iconos y el TextField
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), // Espacio entre iconos y el TextField// Espacio entre iconos y el TextField
          SizedBox(
          height: 200, // Ajusta la altura a tu preferencia
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.house,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Adress",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          const SizedBox(height: 16), // Espacio entre iconos y el TextField
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile number",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), // Espacio entre iconos y botones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Botón "Cancel"
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón "Cancel"
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Color de fondo rojo
                ),
                child: const Text("Cancel"),
              ),
              // Botón "Continue"
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón "Continue"
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Color de fondo azul
                  shadowColor: Colors.blue, // Color de sombra azul
                  elevation: 5, // Altura de la sombra
                ),
                child: const Text("Continue"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}