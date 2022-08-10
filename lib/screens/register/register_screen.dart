import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_title.dart';
import '../../widgets/input_text.dart';
import '../login/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: Container(
                // width: double.infinity,
                // height: 400,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child:
                          AppTitle('Nova Conta', textAlign: TextAlign.center),
                    ),
                    InputText(placeholder: 'Nome'),
                    InputText(placeholder: 'Email'),
                    InputText(placeholder: 'Senha'),
                    InputText(placeholder: 'Confirmar Senha'),
                    SizedBox(
                      width: double.infinity,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          text:
                              'Ao criar uma conta você está aceitando nossos ',
                          children: [
                            TextSpan(
                              text: 'Termos de Serviço',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(text: ' e '),
                            TextSpan(
                              text: 'Políticas de Privacidade',
                              style: TextStyle(color: AppColors.primary),
                            ),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          primary: Colors.white,
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Criar Conta'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('Já tem uma conta?'),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: AppText(
                            'Entrar',
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
