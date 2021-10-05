import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miflutterapp/locator.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/presentation/ui_params/colors.dart';
import 'package:miflutterapp/presentation/ui_params/miflutterapp_sizes.dart';
import 'package:miflutterapp/presentation/widgets/rounded_button.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List<String> genderList = ['Masculino', 'Femenino', 'No binario'];
  String _gender = '';
  double tempMargin = 0;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    tempMargin = size.width * 0.098;
    print('40 en ${size.width} es ${size.width * 0.098}');
    print(
        'alto de la pantalla es${size.height} y alto de la tarjeta es ${size.height / 3.5}');
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          child: Stack(
            children: [
              //Tarjeta de color con bordes
              Container(
                height: size.height / 3.5,
                decoration: BoxDecoration(
                  color: MiFlutterAppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        MiFlutterAppSizes.borderRadiusProfileCard),
                    bottomRight: Radius.circular(
                        MiFlutterAppSizes.borderRadiusProfileCard),
                  ),
                ),
                child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: tempMargin),
                    child: Text(
                      'Raúl Fernandez',
                      style: textTheme.headline4,
                    ),
                  ),
                ),
              ),
              //Text Name
              //Avatar
              Positioned(
                width: size.width,
                top: (size.height / 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      //TODO mantener relación con el resto del diseño
                      radius: MiFlutterAppSizes.avatarProfilePage,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
                    ),
                  ],
                ),
              ),
              //Formulario con datos
              Positioned(
                top: (size.height / 3),
                left: size.width * 0.098,
                right: size.width * 0.098,
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      Container(
                        width: size.width,
                        child: TextFormField(
                          controller: TextEditingController(text: "12/07/1987"),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: MiFlutterAppColors.primaryColor),
                            labelText: 'Fecha de nacimiento',
                          ),
                          readOnly: true,
                        ),
                      ),
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      Container(
                        width: size.width,
                        child: TextFormField(
                          controller: TextEditingController(
                              text: "rfernandez86@gmail.com"),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: MiFlutterAppColors.primaryColor),
                            labelText: 'Email',
                          ),
                          readOnly: true,
                        ),
                      ),
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      Container(
                        width: size.width,
                        child: TextFormField(
                          controller:
                              TextEditingController(text: "+598 2424 5858"),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: MiFlutterAppColors.primaryColor),
                            labelText: 'Teléfono',
                          ),
                          readOnly: true,
                        ),
                      ),
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                  MiFlutterAppSizes.borderRadiusButton),
                            ),
                          ),
                          //filled: true,
                          hintStyle: TextStyle(
                            color: MiFlutterAppColors.fontColor,
                            fontFamily: 'DIN_NEXT_ROUNDED_LT_W01',
                            fontWeight: FontWeight.w100,
                            fontSize:
                                MiFlutterAppSizes.miFlutterAppHintTextSize,
                          ),
                          fillColor: Colors.white,
                        ),
                        isExpanded: true,
                        //isDense: true,
                        //isDense: height > width ? false : true,
                        //itemHeight: height > width ? height * 0.03 : 0,
                        hint: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              "Seleccione una opción",
                              style: TextStyle(
                                color: MiFlutterAppColors.primaryColor,
                                // fontFamily: 'DIN_NEXT_ROUNDED_LT_W01',
                                // fontWeight: FontWeight.w100,
                                // fontSize: MiFlutterAppSizes.t3,
                              ),
                            ),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _gender = newValue!;
                          });
                        },
                        items: genderList.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Center(
                              child: Text(
                                val,
                                style: TextStyle(
                                  color: MiFlutterAppColors.fontColor,
                                  //fontWeight: FontWeight.w100,
                                  //fontSize: MiFlutterAppSizes.t3,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: MiFlutterAppSizes.normalSpace,
                      ),
                      RoundedButton(
                        text: "Cerrar sesión",
                        press: () => _navigateToLogin(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToLogin() {
    locator<AppRouter>().pushNamed('/');
  }
}
