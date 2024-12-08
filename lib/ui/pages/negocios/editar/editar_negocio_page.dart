import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:tdtxle_inputs_flutter/inputs/imagen_perfil/imagen_perfil.dart';

@RoutePage()
class EditarNegocioPage extends StatefulWidget {
  final int id;
  const EditarNegocioPage({super.key, @PathParam('negocio') required this.id});

  @override
  State<EditarNegocioPage> createState() => _EditarNegocioPageState();
}

class _EditarNegocioPageState extends State<EditarNegocioPage> {
  @override
  void initState() {
    NegociosColApi().getNegocio(widget.id).then(
      (value) {
        nombre.text = value!.nombre;
        descripcion.text = value.descripcion;
        correo.text = value.correo;
        telefono.text = value.telefono;
        direccion.text = value.direccion;

        setState(() {
          negocio = value;
        });
      },
    );

    super.initState();
  }

  NegocioModel? negocio;

  String? imagen;
  TextEditingController nombre = TextEditingController();
  TextEditingController descripcion = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController direccion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  "Editar Negocio",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                
                ImagenPerfilFormFile(
                  initialValue: imagen ?? negocio?.imagen ?? "",
                  onChanged: (p0) {
                    setState(() {
                      imagen = p0!.path;
                    });
                  },
                ),
                TextFormField(
                  controller: nombre,
                  decoration: styleInput("Nombre", nombre),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: descripcion,
                  decoration: styleInput("Descripción", descripcion),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: correo,
                        decoration: styleInput("Correo", correo),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: telefono,
                        decoration: styleInput("Telefono", telefono),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                    controller: direccion,
                    decoration: styleInput("Direccion", direccion)),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: crearNegocio,
                    child: const Center(child: Text("Editart")))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> crearNegocio() async {
    final negocio = NegocioModel(
      nombre: nombre.text,
      descripcion: descripcion.text,
      direccion: direccion.text,
      telefono: telefono.text,
      correo: correo.text,
      imagen: imagen,
      latitude: 1.1,
      longitude: 1.1,
    );

    var idNegocio = Hive.box('Sesion').get('id_sesion', defaultValue: 0) as int;

    final res = await NegociosColApi().editarNegocio(idNegocio, negocio);

    print(res.toJson());
  }

  InputDecoration styleInput(String label, TextEditingController controller) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      hintText: label,
      labelText: label,
      suffixIcon: IconButton(
        onPressed: () {
          controller.text = "";
        },
        icon: const Icon(Icons.close),
      ),
    );
  }
}
