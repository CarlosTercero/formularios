import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:phone_number/phone_number.dart';

class carlosForm3 extends StatefulWidget {
  const carlosForm3({Key? key}) : super(key: key);
  @override
  State<carlosForm3> createState() => _carlosForm3();
}

class _carlosForm3 extends State<carlosForm3> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool switchValue = false;
  List<String> dropdownItems = ['Opcion1', 'Opcion2', 'Opcion3', 'Opcion4'];
  String? selectedDropdownValue;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Text(
            'Formulario 3 Carlos Farres',
            style: TextStyle(
              fontSize: 24.0,  // Tamaño de fuente del título
              fontWeight: FontWeight.bold,
            ),
          ),
          
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                      "Textbox",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
               FormBuilderTextField(
            name: 'text_field_name',
            controller: textController, // Assign the controller
            decoration: const InputDecoration(labelText: 'Escribe algo'),
            //validator: FormBuilderValidators.required(context),
          ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ElevatedButton(
                    onPressed: (){
                      //nada
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 185, 172, 172), // Color de fondo rojo
                    ),
                    child: Icon(Icons.flutter_dash, color: Colors.blue),
                    ),
                    
                    Spacer(),
                    ElevatedButton(
                    onPressed: (){
                      //nada
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 181, 168, 167), // Color de fondo rojo
                    ),
                    child: Icon(Icons.android, color: Colors.blue),
                    ),
                    Spacer(),
                    ElevatedButton(
                    onPressed: (){
                      //nada
                    },
                    style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 186, 173, 172), // Color de fondo rojo
                    ),
                    child: Icon(Icons.wb_shade, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Switch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Text("Esto es un switch"),
                    Switch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Colors.black),
            ),
            child: FormBuilderDateTimePicker(
              name: 'date',
              initialEntryMode: DatePickerEntryMode.calendar,
              initialValue: DateTime.now(),
              inputType: InputType.both,
              decoration: InputDecoration(
                labelText: 'Calendar',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    _formKey.currentState!.fields['date']?.didChange(null);
                  },
                ),
              ),
              initialTime: const TimeOfDay(hour: 8, minute: 0),
              // locale: const Locale.fromSubtags(languageCode: 'fr'),
            ),
          ),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Dropdown field",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                FormBuilderDropdown<String>(
                    name: 'dropdown_name',
                    items: dropdownItems
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    decoration: const InputDecoration(labelText: 'Selecciona una opcion'),
                    onChanged: (value) {
                      setState(() {
                        selectedDropdownValue = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20.0),
              ],
            ),
          ),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Dropdown field",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                FormBuilderRadioGroup<int>(
                  name: 'radio_group_name',
                  options: const [
                    FormBuilderFieldOption(value: 1),
                    FormBuilderFieldOption(value: 2),
                    FormBuilderFieldOption(value: 3),
                  ],
                  decoration: const InputDecoration(labelText: 'Radio Buttons'),
                  orientation: OptionsOrientation.vertical,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}