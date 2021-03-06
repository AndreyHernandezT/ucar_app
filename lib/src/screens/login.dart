import 'package:flutter/material.dart';
import 'package:ucar_app/src/components/rounded_password_field.dart';
import 'package:ucar_app/src/screens/background.dart';
import 'package:ucar_app/src/theme/colors.dart';
import 'package:ucar_app/src/theme/fontsizes.dart';

import '../components/already_have_an_account.dart';
import '../components/rounded_button.dart';
import '../components/rounded_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: primary,
      body: Background(
      child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(
                height: 100,
                width: 100,
                color: textGray,
              ),              
            SizedBox(height: size.height * 0.03),
              const Text("¡Bienvenido\nNuevamente!",
              style: TextStyle(
                color: textWhite, 
                fontSize: titleFontSize, 
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            
            const Text(
              "Inicia sesión con tu cuenta existente de UCAR", 
              style: TextStyle(
                color: textWhite,
                fontSize: bodyTextFontSize
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email o Teléfono",
              onChanged: (value) {}, 
              icon: Icons.person,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width / 13,),
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      color: textOrange,
                      fontSize: bodyTextFontSize
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "INICIAR SESIÓN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.pushNamed(
                  context,
                  "/sing-up"
                );
              }
            )
          ],
        )
      ),
      )
    );
  }
}
