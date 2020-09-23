import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miflutterapp/utils/colors.dart';
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
                Text(
                  "LOGIN",
                  style: textTheme.headline6,
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.35,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an Account ? ",
                      style: textTheme.caption.copyWith(color: primaryColor),
                    ),
                    GestureDetector(
                      onTap: (){
                        print('Sign Up');
                      },
                      child: Text(
                        "Sign Up" ,
                        style: textTheme.caption.copyWith(color: primaryColor, fontWeight: FontWeight.bold,),
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
