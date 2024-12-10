import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:negocios_col_flutter/models/producto_model.dart';
import 'package:negocios_col_flutter/models/servicio_model.dart';
import 'package:negocios_col_flutter/services/API/negocios_col_api.dart';
import 'package:tdtxle_inputs_flutter/inputs/imagen_perfil/imagen_perfil.dart';

@RoutePage()
class EditarSPPage extends StatefulWidget {
  final int idNegocio;
  final String tipo;
  final int id;
  const EditarSPPage({
    super.key,
    @PathParam.inherit('negocio') required this.idNegocio,
    @PathParam('tipo') required this.tipo,
    @PathParam('id') required this.id,
  });

  @override
  State<EditarSPPage> createState() => _EditarSPPageState();
}

class _EditarSPPageState extends State<EditarSPPage> {
  ProductoModel? produto;
  ServicioModel? servicio;

  @override
  void initState() {
    if (widget.tipo == "producto") {
      NegociosColApi().getProducto(widget.id).then((value) {
        nombre.text = value.nombre;
        unidad.text = value.unidad.toString();
        detalles.text = value.descripsion;
        precio.text = value.precio.toString();
        setState(() {
          produto = value;
        });
      });
    } else {
      NegociosColApi().getServicio(widget.id).then((value) {
        nombre.text = value.nombre;
        unidad.text = value.unidad.toString();
        detalles.text = value.descripcion;
        precio.text = value.precio.toString();
        setState(() {
          servicio = value;
        });
      });
    }

    super.initState();
  }

  String? imagen;
  TextEditingController nombre = TextEditingController();
  TextEditingController unidad = TextEditingController();
  TextEditingController detalles = TextEditingController();
  TextEditingController precio = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final String laImagen = imagen ?? produto?.imagen ?? servicio?.imagen ?? "";

    print("imagen a mostrar $laImagen");
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  "Editar ${widget.tipo}",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                Container(
                  constraints: const BoxConstraints(maxHeight: 200),
                  child: ImagenPerfilFormFile(
                    initialValue: laImagen,
                    onChanged: (p0) {
                      setState(() {
                        imagen = p0!.path;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: nombre,
                  decoration: styleInput("Nombre", nombre),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    if (widget.tipo == "producto") ...[
                      Expanded(
                        child: TextFormField(
                          controller: unidad,
                          decoration: styleInput("Unidad", unidad),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                    Expanded(
                      child: TextFormField(
                        controller: precio,
                        decoration: styleInput("Precio", precio),
                      ),
                    ),
                    if (widget.tipo != "producto") const Spacer(),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: detalles,
                  minLines: 3,
                  maxLines: 6,
                  decoration: styleInput("Detalles", detalles),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    crearProducto();
                  },
                  child: const Center(child: Text("Guardar")),
                )
              ],
            ),
          ),
        ));
  }

  Future<void> crearProducto() async {
    if (widget.tipo == "producto") {
      final producto = ProductoModel(
        nombre: nombre.text,
        imagen: imagen,
        precio: int.parse(precio.text),
        descripsion: detalles.text,
        id_Negocio: widget.idNegocio,
        unidad: int.parse(unidad.text),
      );

      final res =   await NegociosColApi().editarProducto(widget.id, producto);
      context.router.back();
    } else {
      final sevicio = ServicioModel(
        nombre: nombre.text,
        imagen: imagen,
        precio: int.parse(precio.text),
        descripcion: detalles.text,
        id_Negocio: widget.idNegocio,
        unidad: 1,
      );

      final res = await NegociosColApi().editarServicio(widget.id, sevicio);
      context.router.back();
    }
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
