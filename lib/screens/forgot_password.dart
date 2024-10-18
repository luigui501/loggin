// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loggin/pallete.dart';
import '../widgets/background_image.dart';
import '../widgets/rounded_button.dart';
import '../widgets/text_field_input.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/login_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: const Text(
              'Recuperar Contraseña',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: const Text(
                        'Ingrese su Correo para enviar las instrucciones de recuperacion',
                        style: kBodyText,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Correo',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const RoundedButton(buttonName: 'Enviar')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
