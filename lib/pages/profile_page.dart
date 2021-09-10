import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miflutterapp/ui_params/colors.dart';
import 'package:miflutterapp/widgets/rounded_button.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            //Tarjeta de color con bordes
            Container(
              height: size.height / 3,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            //Text Name
            Positioned(
              width: size.width,
              top: (size.height / 7),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Raúl Fernandez',
                    style: textTheme.headline4,
                  ),
                ],
              ),
            ),
            //Avatar
            Positioned(
              width: size.width,
              top: (size.height / 4),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Text(
                  //   'Raúl Fernandez',
                  //   style: textTheme.headline4,
                  // ),
                  // SizedBox(
                  //   height: 60,
                  // ),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'),
                  ),
                ],
              ),
            ),
            //Formulario con datos
            Positioned(
              top: (size.height / 2),
              left: 40,
              right: 40,
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: size.width,
                      child: TextFormField(
                        controller: TextEditingController(text: "12/07/1987"),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.orange),
                          labelText: 'Fecha de nacimiento',
                        ),
                        readOnly: true,
                      ),
                    ),
                    Container(
                      width: size.width,
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: TextFormField(
                        controller: TextEditingController(
                            text: "rfernandez86@gmail.com"),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.orange),
                          labelText: 'Email',
                        ),
                        readOnly: true,
                      ),
                    ),
                    Container(
                      width: size.width,
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: TextFormField(
                        controller:
                            TextEditingController(text: "+598 2424 5858"),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.orange),
                          labelText: 'Teléfono',
                        ),
                        readOnly: true,
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: TextFormField(
                        controller: TextEditingController(text: "Masculino"),
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.orange),
                          labelText: 'Genéro',
                        ),
                        readOnly: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RoundedButton(
                        text: "Cerrar sesión",
                        press: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
