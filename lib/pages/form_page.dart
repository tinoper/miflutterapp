import 'package:flutter/material.dart';
import 'package:miflutterapp/pages/list_page.dart';
import 'package:miflutterapp/widgets/rounded_button.dart';

class FormPlayer extends StatefulWidget {
  @override
  _FormPlayerState createState() => _FormPlayerState();
}

class _FormPlayerState extends State<FormPlayer> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nombreController;
  TextEditingController _apellidoController;
  TextEditingController _edadController;
  TextEditingController _dniController;

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
      appBar: AppBar(
        title: Text('Ingreso de jugadores'),
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
                  if (value.isEmpty) {
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
                  if (value.isEmpty) {
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
                  if (_formKey.currentState.validate()) {
                    print(
                        'El jugador ${_nombreController.text} ha sido ingresado');
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ListPage()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class trash extends StatefulWidget {
  const trash({Key? key}) : super(key: key);

  @override
  _trashState createState() => _trashState();
}

class _trashState extends State<trash> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Form(
          //key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    //if (_formKey.currentState.validate()) {
                      // Process data.
                    //}
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
