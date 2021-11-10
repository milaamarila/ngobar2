import 'dart:math';

import 'package:flutter/material.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();

  late String nUsername, nPassword;

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
          child: Center(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(
                      child: Text(
                    'Login',
                    style: TextStyle(fontSize: 27),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextFormField(
                    validator: (e) {
                      if (e!.isEmpty) {
                        _key.currentState!.showSnackBar(SnackBar(
                            content: Text('Username tidak boleh kosong')));
                      }
                      return null;
                    },
                    controller: myUsernameController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        hintText: 'Username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextFormField(
                    validator: (e) {
                      if (e!.isEmpty) {
                        _key.currentState!.showSnackBar(SnackBar(
                            content: Text('Password tidak boleh kosong')));
                      }
                      return null;
                    },
                    controller: myPasswordController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _togglePasswordVisibility();
                        },
                        child: Icon(
                          _isHidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _isHidePassword ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                    color: Colors.blue[300],
                    child: Text('Login'),
                    onPressed: () {
                      nUsername = myUsernameController.text;
                      nPassword = myPasswordController.text;

                      if (_formKey.currentState!.validate()) {
                        if (nUsername != 'summerid') {
                          // ignore: deprecated_member_use
                          _key.currentState!.showSnackBar(
                              SnackBar(content: Text('Username Salah')));
                        } else if (nPassword != 'summer2021') {
                          // ignore: deprecated_member_use
                          _key.currentState!.showSnackBar(
                              SnackBar(content: Text('Password Salah')));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
