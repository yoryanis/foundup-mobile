import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
              maxWidth: 250.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 100),
                Image.asset(
                  'assets/logo-white.png',
                  width: 250,
                  height: 45,
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff3E51FF)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                    child: Text('Unirse!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    onPressed: () => null,
                  ),
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
          )),
        ));
  }
}
