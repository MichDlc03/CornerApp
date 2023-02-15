import 'package:flutter/material.dart';

class EdidProfile extends StatefulWidget {
  const EdidProfile({super.key});

  @override
  State<EdidProfile> createState() => _EdidProfileState();
}

class _EdidProfileState extends State<EdidProfile> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    const String _title = 'Editar Perfil';

    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8E8E8),
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          _title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor ? Theme.of(context).colorScheme.shadow : null,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [ImputEdidProfile()],
          ),
        ),
      ),
    );
  }
}

class ImputEdidProfile extends StatefulWidget {
  const ImputEdidProfile({super.key});

  @override
  State<ImputEdidProfile> createState() => _ImputEdidProfileState();
}

class _ImputEdidProfileState extends State<ImputEdidProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF4ECF84),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4ECF84))),
                  labelText: 'Nombre',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese un Nombre';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                    color: Color(0xFF4ECF84),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF4ECF84))),
                  labelText: 'Telefono',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese un Numero de telefono';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                    color: Color(0xFF4ECF84),
                  ),
                  border: OutlineInputBorder(
                   borderSide: BorderSide(color: Color(0xFF4ECF84))),
                  labelText: 'Correo Electronico',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese un correo electronico nuevo';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 13),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4ECF84),
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                    ),
              ),
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Guardar'),
            ),
          ),
        ],
      ),
    );
  }
}
