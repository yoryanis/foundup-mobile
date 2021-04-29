import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff3E51FF),
        ),
        backgroundColor: const Color(0xff3E51FF),
        body: SafeArea(
          child: Center(
              child: Container(
            constraints: BoxConstraints(
              maxWidth: 300.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 130),
                Image.asset(
                  'assets/logo-white.png',
                  width: 250,
                  height: 45,
                ),
                const SizedBox(height: 60),
                LoginForm(),
                const SizedBox(height: 50),
                Text(
                  "Version 0.1.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}

// Create a Form widget.
class LoginForm extends StatefulWidget {
  @override
  MyLoginFormState createState() {
    return MyLoginFormState();
  }
}

class MyLoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
                labelText: "Correo electrónico",
                icon: new Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 30,
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusColor: Colors.white),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 15),
          TextFormField(
            enableSuggestions: false,
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Contraseña",
                icon: new Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30,
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusColor: Colors.white),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff3E51FF)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)))),
              child: Text('Iniciar sesión',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'Validando datos de usuario...',
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Colors.green[300],
                  ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
