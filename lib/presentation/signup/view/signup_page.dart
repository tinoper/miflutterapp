import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../ui_params/miflutterapp_sizes.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
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
              // RoundedButton(
              //   text: "LOGIN",
              //   press: () => _navigateToListPage(),
              // ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an Account ? ",
                  ),
                  GestureDetector(
                    onTap: () => context.pushNamed('signup'),
                    child: Text(
                      "Sign Up",
                      style: textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.bold,
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
