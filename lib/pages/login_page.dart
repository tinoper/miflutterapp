import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miflutterapp/pages/list_page.dart';
import 'package:miflutterapp/ui_params/miflutterapp_sizes.dart';
import 'package:miflutterapp/widgets/rounded_button.dart';
import 'package:miflutterapp/widgets/rounded_input_field.dart';
import 'package:miflutterapp/widgets/rounded_password_field.dart';

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
              // Text(
              //   "LOGIN",
              //   style: textTheme.headline6,
              // ),
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
                press: () {
                  context.router.pushNamed('/ListPage');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ListPage(),
                  //   ),
                  // );
                },
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an Account ? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.pushNamed('/ListPage');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ListPage(),
                      //   ),
                      // );
                    },
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
