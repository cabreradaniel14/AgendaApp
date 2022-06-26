import 'package:agenda_app/Utilerias/Colors.dart';
import 'package:agenda_app/pages/Login%20UI/button_login.dart';
import 'package:agenda_app/pages/Login%20UI/social_login.dart';
import 'package:agenda_app/pages/Login%20UI/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  LoginApp({
    Key? key,
  }) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*  appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ), */
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/image/calendario.png',
                      width: 150,
                      height: 150,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Bienvenido, inicia sesión con tu cuenta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: GlobalColors.colorPrincipal,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormFieldLogin(
                    controller: emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(height: 20),
                TextFormFieldLogin(
                    controller: passController,
                    text: 'Password',
                    obscure: true,
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                ButtonLogin(),
                const SizedBox(
                  height: 60,
                ),
                socialLogin()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿No tienes cuenta? '),
            InkWell(
              onTap: () {
                print('Registro');
              },
              child: Text(
                'Registrate aquí',
                style: TextStyle(color: GlobalColors.colorPrincipal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
