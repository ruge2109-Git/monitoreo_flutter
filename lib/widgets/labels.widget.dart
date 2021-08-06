import 'package:flutter/material.dart';
import 'package:monitoreo/helpers/crear_ruta.dart';
class Labels extends StatelessWidget {

  final Widget pageRoute;
  final String titulo;
  final String subTitulo;

  const Labels({
    Key key, 
    @required this.pageRoute, 
    @required this.titulo, 
    @required this.subTitulo
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(this.titulo,style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300)),
          GestureDetector(
            child: Text(this.subTitulo, style: TextStyle(color: Colors.blue[600],fontSize: 18,fontWeight: FontWeight.bold)),
            onTap: (){
              Navigator.pushReplacement(context, crearRuta(pageRoute));
              // Navigator.pushReplacementNamed(context, 'registrar');
            },
          )
        ],
      ),
    );
  }
}