import 'package:dech/pages/menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool _obscureText = true;
  String _email;
  GlobalKey eKey;
  GlobalKey ePas;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Route _createRoute(page_name) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page_name,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1, 0.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              child: Image.asset('assests/images/dech.png'),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Icon(Icons.mail)),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Icon(Icons.lock)),
                ),
                keyboardType: TextInputType.number,
                validator: (val) =>
                    val.length < 6 ? 'Password too short.' : null,
                obscureText: _obscureText,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
            ),
            RaisedButton(
              child: Text('Log in'),
              onPressed: () {
                print(_password);
                if (_email == "umut@gmail.com" && _password == "1234") {
                  FocusScope.of(context).requestFocus(FocusNode());

                  Navigator.of(context).push(_createRoute(Menus()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
