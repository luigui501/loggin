import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pallete.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(image: 'assets/images/login_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: Text(
                    ' ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Correo',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Contraseña',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: const Text(
                      'Recuperar contraseña',
                      style: kBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const RoundedButton(
                    buttonName: 'Ingreso',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                  child: const Text(
                    'Crear nueva cuenta',
                    style: kBodyText,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
