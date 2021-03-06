import 'package:flutter/material.dart';
import 'package:ucar_app/src/components/app_bar_custom.dart';
import 'package:ucar_app/src/screens/background.dart';

import '../components/already_have_an_account.dart';
import '../components/drop_down_button.dart';
import '../components/rounded_button.dart';
import '../components/rounded_input_field.dart';
import '../components/rounded_password_field.dart';
import '../theme/colors.dart';
import '../theme/fontsizes.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: primary,
        appBar: const PreferredSize(
          child: AppBarCustom(
            color: backgroundSvg,
            text: "",
          ),
          preferredSize: Size.fromHeight(50),
        ),
        body: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "¬°Empecemos!",
                  style: TextStyle(
                    color: textWhite,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                const Text(
                  "Crea una cuenta en UCAR para obtener todas las funcionalidades",
                  style:
                      TextStyle(color: textWhite, fontSize: bodyTextFontSize),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                    hintText: "ID Universidad",
                    onChanged: (value) {},
                    icon: Icons.shield_rounded),
                DropDownButtonCustom(
                    hintText: "Carrera Universitaria",                    
                    icon: Icons.collections_bookmark_rounded, 
                    list: ['One', 'Two', 'Free', 'Four'],),
                RoundedInputField(
                    hintText: "Nombres",
                    onChanged: (value) {},
                    icon: Icons.person),
                RoundedInputField(
                    hintText: "Apellidos",
                    onChanged: (value) {},
                    icon: Icons.person),
                RoundedInputField(
                    hintText: "Email",
                    onChanged: (value) {},
                    icon: Icons.email_rounded),
                RoundedInputField(
                    hintText: "Tel√©fono",
                    onChanged: (value) {},
                    icon: Icons.phone),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  text: "Repetir contrase√Īa",
                  onChanged: (value) {},
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "REG√ćSTRATE",
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: size.height * 0.03),
              ],
            ),
          ),
        ));
  }
}
