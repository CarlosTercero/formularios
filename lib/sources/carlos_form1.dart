import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class carlosForm1 extends StatefulWidget {
  const carlosForm1({Key? key}) : super(key: key);
  @override
  State<carlosForm1> createState() => _carlosForm1();
}

class _carlosForm1 extends State<carlosForm1> {
  final _formKey = GlobalKey<FormBuilderState>();
  int? option;
  TextEditingController textController = TextEditingController();
  List<String> dropdownItems = ['Opcion1', 'Opcion2', 'Opcion3', 'Opcion4'];
  String? selectedDropdownValue;
  List<String> selectedCheckboxes = [];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Formulario 1 Carlos Farres',
            style: TextStyle(
              fontSize: 24.0,  // Tamaño de fuente del título
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Esto es la descripción del formulario',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20.0),  // Espacio entre el título y la descripción
          FormBuilder(
            key: _formKey,
            child: Column(
              children: [
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
                const SizedBox(height: 10.0),  // Espacio entre radiobuttons y label
                FormBuilderTextField(
                  name: 'text_field_name',
                  controller: textController, // Assign the controller
                  decoration: const InputDecoration(labelText: 'Escribe algo'),
                  //validator: FormBuilderValidators.required(context),
                ),
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
                  const SizedBox(height: 20.0), // Add space between the dropdown and checkboxes
                const Text(
                  'Pon la velocidad del coche pasada 1 hora:',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FormBuilderCheckboxGroup(
                  name: 'checkbox_group_name',
                  options: const [
                    FormBuilderFieldOption(value: '20 km/h'),
                    FormBuilderFieldOption(value: 'Checkbox 2'),
                    FormBuilderFieldOption(value: 'Checkbox 3'),
                    FormBuilderFieldOption(value: 'Checkbox 4'),
                  ],
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