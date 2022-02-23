import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miflutterapp/locator.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';
import 'package:miflutterapp/presentation/widgets/rounded_button.dart';
import 'package:miflutterapp/presentation/widgets/rounded_input_field.dart';
import 'package:miflutterapp/presentation/widgets/rounded_password_field.dart';

class LoginPage extends StatelessWidget {
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
              ),
              SizedBox(
                height: MiFlutterAppSizes.normalSpace,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () => _navigateToListPage(),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an Account ? ",
                  ),
                  GestureDetector(
                    onTap: () => _navigateToSignUp(),
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

  _navigateToListPage() {
    locator<AppRouter>().pushNamed('/ListPage');
  }

  _navigateToSignUp() {
    //TODO implement SignUpPage
    print('TODO implement SignUpPage and remove this line');
  }
}