import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:negocios_col_flutter/models/negocios.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:tdtxle_inputs_flutter/inputs/imagen_perfil/imagen_perfil.dart';

@RoutePage()
class CrearNegocioPage extends StatefulWidget {
  const CrearNegocioPage({super.key});

  @override
  State<CrearNegocioPage> createState() => _CrearNegocioPageState();
}

class _CrearNegocioPageState extends State<CrearNegocioPage> {
  String? imagen;
  TextEditingController nombre = TextEditingController();
  TextEditingController descripcion = TextEditingController();
  TextEditingController correo = TextEditingController();
  TextEditingController telefono = TextEditingController();
  TextEditingController direccion = TextEditingController();
  TextEditingController password = TextEditingController();

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
                  "Crear Negocio",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                ImagenPerfilFormFile(
                  initialValue: imagen ?? "",
                  onChanged: (p0) {
                    setState(() {
                      imagen = p0!.path;
                    });
                  },
                ),
                const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: styleInput("Contraseña", password)),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: crearNegocio,
                    child: const Center(child: Text("Crear")))
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
      password: password.text,
      descripcion: descripcion.text,
      direccion: direccion.text,
      telefono: telefono.text,
      correo: correo.text,
      imagen: imagen,
      latitude: 1.1,
      longitude: 1.1,
    );

    final res = await NegociosColApi().crearNegocio(negocio);
    var boxSesion = Hive.box('Sesion');
    boxSesion.put('id_sesion', res.id_Negocio);

    context.router.replaceNamed('/editar/negocio/${res.id_Negocio}');
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
