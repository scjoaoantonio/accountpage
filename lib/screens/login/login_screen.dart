import 'package:flutter/material.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_title.dart';
import '../../widgets/input_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131E2E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 500, maxWidth: 500),
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
                    AppTitle('Login'),
                    InputText(placeholder: 'Email'),
                    InputText(placeholder: 'Senha'),
                    SizedBox(
                      width: double.infinity,
                      child: AppText(
                        'Esqueceu sua senha?',
                        textAlign: TextAlign.end,
                        color: Colors.white.withOpacity(0.5),
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
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Entrar'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText('Não tem uma conta?'),
                        SizedBox(width: 6),
                        AppText(
                          'Criar conta',
                          color: Colors.blue,
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
