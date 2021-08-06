import 'package:flutter/material.dart';
import 'package:monitoreo/pages/Login.page.dart';
import 'package:monitoreo/widgets/boton_azul.widget.dart';
import 'package:monitoreo/widgets/custom_input.widget.dart';
import 'package:monitoreo/widgets/labels.widget.dart';


class RegistrarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child:EncabezadoHome()
     ),
   );
  }
}


class EncabezadoHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    TextStyle txtTitulo = new TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    
    return Center(
      child: Stack(
        children: [
          Image(image: AssetImage('assets/img/SHAPE.png'), width: 200,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Text('Bienvenido!', style:txtTitulo),
              Image(
                image: AssetImage('assets/img/imgHome.png'),
                width: 300
              ),
              _Form(),
              SizedBox(height: 20),
              Labels(
                titulo: '¿Ya tienes una cuenta?', 
                subTitulo: 'Inicia sesión',
                pageRoute: LoginPage() 
              ) 
            ],
          ),
        ],
      ),
    );
  }
}


class _Form extends StatefulWidget {

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final usuarioCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final passwordRepeatCtrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.supervised_user_circle,
            placeholder: 'Usuario',
            inputType: TextInputType.text,
            textController: usuarioCtrl,
            isPassword: false,
          ),
          CustomInput(
            icon: Icons.lock,
            placeholder: 'Contraseña',
            inputType: TextInputType.text,
            textController: passwordCtrl,
            isPassword: true,
          ),
          CustomInput(
            icon: Icons.lock,
            placeholder: 'Repita la contraseña',
            inputType: TextInputType.text,
            textController: passwordRepeatCtrl,
            isPassword: true,
          ),
          BotonAzul(
            texto: 'Crear cuenta',
            function: (){},
          )
        ],
      )
    );
  }
}