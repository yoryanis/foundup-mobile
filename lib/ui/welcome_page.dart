import 'package:flutter/material.dart';
import 'package:foundupapp/ui/login_page.dart';
import 'package:foundupapp/ui/register_page.dart';

class WelcomePage extends StatelessWidget {
  void goToLogin(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginPage()));
  }

  void goToRegister(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => RegisterPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Center(
                  child: Container(
            constraints: BoxConstraints(
              maxWidth: 250.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 200),
                Image.asset(
                  'assets/logo-white.png',
                  width: 150,
                  height: 45,
                ),
                const SizedBox(height: 35),
                Text(
                  "Bienvenidos!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff3E51FF)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFFFFFF)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => goToLogin(context),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff3E51FF)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  child: Text('Crear cuenta!',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  onPressed: () => goToRegister(context),
                ),
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
          )))
        ],
      ),
    );
  }
}
