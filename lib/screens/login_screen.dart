import 'package:appfluter_ascom/components/my_button.dart';
import 'package:appfluter_ascom/components/my_textbold_red.dart';
import 'package:appfluter_ascom/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(203, 4, 4, 50),
        centerTitle: true,
        title: const Text(
          'Inicia sesión',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: const Center(
        child: Expanded(
          child: Column(
            children: [
              // Espacio
              SizedBox(
                height: 90,
              ),
              // Correo electronico
              MyTextField(
                controller: null,
                hintText: 'Correo Electronico',
                obscureText: true,
              ),
              // Espacio
              SizedBox(
                height: 15,
              ),
              // Contraseña
              MyTextField(
                controller: null,
                hintText: 'Contraseña',
                obscureText: false,
              ),
              // Espacio
              SizedBox(
                height: 45,
              ),
              // Boton de inicio de sesión
              MyButton(
                onTap: null,
                heightButton: 45,
                textButton: 'INICIAR SESIÓN',
              ),
              // Espacio
              SizedBox(
                height: 45,
              ),
              // He olvidado mi contraseña
              MyTextBoldRed(
                text: 'He olvidado mi contraseña',
              ),
              // Espacio hasta el final
              SizedBox(
                height: 120,
              ),
              // Si no tienes cuenta, Crea una ahora
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Si no tienes cuenta,'),
                  MyTextBoldRed(
                    text: ' crea una ahora.',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
