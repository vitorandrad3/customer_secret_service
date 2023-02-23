import 'package:customer_secret_service/login/presentation/widgets/custom_backgroud.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_login_button.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        widget: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                   Text(
                    'Entre',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 48,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Form(
                    child: Column(
                      children: [
                        const CustomTextFormField(
                          hintText: 'E-mail',
                          prefixIcon: Icon(Icons.mail),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const CustomTextFormField(
                          hintText: 'Senha',
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const CustomLoginButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Divider(
                      color: Color.fromARGB(113, 255, 255, 255),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ainda não tem uma conta?',
                        style: TextStyle(color: Colors.white60),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register_page');
                          },
                          child: const Text('Cadastre-se.'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
