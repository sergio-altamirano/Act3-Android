import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idClienteController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _fechaNacimientoController = TextEditingController();
  final _domicilioController = TextEditingController();
  final _curpController = TextEditingController();

  @override
  void dispose() {
    _idClienteController.dispose();
    _nombreController.dispose();
    _apellidoController.dispose();
    _telefonoController.dispose();
    _fechaNacimientoController.dispose();
    _domicilioController.dispose();
    _curpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 164, 183),
        title: const Text("Formulario Cliente"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idClienteController,
              fieldName: "ID Cliente",
              myIcon: Icons.perm_identity,
              prefixIconColor: const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.person,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _apellidoController,
              fieldName: "Apellido",
              myIcon: Icons.person_outline,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _telefonoController,
              fieldName: "Teléfono",
              myIcon: Icons.phone,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _fechaNacimientoController,
              fieldName: "Fecha de Nacimiento",
              myIcon: Icons.cake,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _domicilioController,
              fieldName: "Domicilio",
              myIcon: Icons.home,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _curpController,
              fieldName: "CURP",
              myIcon: Icons.badge,
              prefixIconColor:  const Color.fromARGB(255, 79, 151, 163),
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
        side: const BorderSide(color:  const Color.fromARGB(255, 79, 151, 163)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              idCliente: _idClienteController.text,
              nombre: _nombreController.text,
              apellido: _apellidoController.text,
              telefono: _telefonoController.text,
              fechaNacimiento: _fechaNacimientoController.text,
              domicilio: _domicilioController.text,
              curp: _curpController.text,
            ),
          ),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color:  const Color.fromARGB(255, 79, 151, 163),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor =  const Color.fromARGB(255, 79, 151, 163),
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:  const Color.fromARGB(255, 79, 151, 163)),
        ),
        labelStyle: const TextStyle(color:  const Color.fromARGB(255, 79, 151, 163)),
      ),
    );
  }
}
