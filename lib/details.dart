import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idCliente;
  final String nombre;
  final String apellido;
  final String telefono;
  final String fechaNacimiento;
  final String domicilio;
  final String curp;

  const Details({
    Key? key,
    required this.idCliente,
    required this.nombre,
    required this.apellido,
    required this.telefono,
    required this.fechaNacimiento,
    required this.domicilio,
    required this.curp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del Cliente"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                side: BorderSide(color:  const Color.fromARGB(255, 79, 151, 163)),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_circle, color:  const Color.fromARGB(255, 79, 151, 163)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "ID Cliente: $idCliente",
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () {
                            // Acción para eliminar si se desea
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text("Nombre: $nombre"),
                    Text("Apellido: $apellido"),
                    Text("Teléfono: $telefono"),
                    Text("Fecha de Nacimiento: $fechaNacimiento"),
                    Text("Domicilio: $domicilio"),
                    Text("CURP: $curp"),
                  ],
                ),
              ),
            ),

            // Tarjeta ejemplo predefinida
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.account_circle_outlined, color: Colors.blueGrey),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "ID Cliente: C001",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Icon(Icons.delete, color: Colors.redAccent),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text("Nombre: Ana"),
                    Text("Apellido: Martínez"),
                    Text("Teléfono: 5523456789"),
                    Text("Fecha de Nacimiento: 1995-07-15"),
                    Text("Domicilio: Calle Luna #123, CDMX"),
                    Text("CURP: MAA950715MDFRZN00"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
