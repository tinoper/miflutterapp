import 'package:flutter/material.dart';
import 'package:miflutterapp/locator.dart';
import 'package:miflutterapp/routes/router.gr.dart';
import 'package:miflutterapp/presentation/widgets/common/app_bar.dart';
import 'package:miflutterapp/presentation/widgets/rounded_button.dart';

class FormPlayer extends StatefulWidget {
  @override
  _FormPlayerState createState() => _FormPlayerState();
}

class _FormPlayerState extends State<FormPlayer> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController? _nombreController;
  TextEditingController? _apellidoController;
  TextEditingController? _edadController;
  TextEditingController? _dniController;

  @override
  void initState() {
    super.initState();

    _nombreController = new TextEditingController(text: '');
    _apellidoController = new TextEditingController(text: '');
    _edadController = new TextEditingController(text: '');
    _dniController = new TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MiAppBar(
        title: 'Ingreso de jugadores',
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextFormField(
                controller: _nombreController,
                decoration: InputDecoration(labelText: 'Nombres'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingresar nombres';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _apellidoController,
                decoration: InputDecoration(labelText: 'Apellidos'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingresar apellidos';
                  } else {
                    return null;
                  }
                },
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    child: TextFormField(
                      controller: _edadController,
                      decoration: InputDecoration(labelText: 'Edad'),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _dniController,
                      decoration:
                          InputDecoration(labelText: 'Documento de Identidad'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              RoundedButton(
                text: 'Ingresar jugador',
                press: () {
                  if (_formKey.currentState!.validate()) {
                    print(
                        'El jugador ${_nombreController!.text} ha sido ingresado');
                    _navigateToListPage();
                  }
                },
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
}
