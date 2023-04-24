import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:miflutterapp/presentation/player_list/view/view.dart';
import 'package:miflutterapp/presentation/signup/view/view.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';
import 'package:miflutterapp/presentation/shared/rounded_button.dart';
import 'package:miflutterapp/presentation/shared/rounded_input_field.dart';
import 'package:miflutterapp/presentation/shared/rounded_password_field.dart';

class LoginPage extends StatelessWidget {
  static const name = 'login';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.08),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedPasswordField(
                onChanged: (value) {},
                isConfirmationPassword: false,
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () => context.goNamed(PlayerListPage.name),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an Account ? ",
                  ),
                  GestureDetector(
                    onTap: () => context.pushNamed(SignUpPage.name),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
