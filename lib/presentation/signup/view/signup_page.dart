import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:miflutterapp/presentation/player_list/view/player_list_page.dart';

import '../../ui_params/miflutterapp_sizes.dart';
import '../../shared/rounded_button.dart';
import '../../shared/rounded_input_field.dart';
import '../../shared/rounded_password_field.dart';

class SignUpPage extends StatelessWidget {
  static const name = 'signup';

  const SignUpPage({super.key});

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
              SizedBox(height: size.height * 0.03),
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
              RoundedPasswordField(
                onChanged: (value) {},
                isConfirmationPassword: true,
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () => context.goNamed(PlayerListPage.name),
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () => context.pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
