import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Mytextfromfield.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  bool isPasswordShow = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Myfield(
                lable: "name",
                hintText: "Enter your name",
                validator: (name) {
                  if (name == null || name
                      .trim()
                      .isEmpty) {
                    return "Please enter your name";
                  }
                },
              ),
              const SizedBox(height: 25),
              Myfield(
                lable: "Password",
                hintText: "Enter your password",
                obscureText: isPasswordShow,
                maxLength: 7,
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordShow = !isPasswordShow;
                      });
                    },
                    icon: Icon(
                      isPasswordShow ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    )),
                keyboardType: TextInputType.number,
                validator: (pass) {
                  Pattern pattern =
                      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{7,}$";
                  RegExp regExp = RegExp(pattern.toString());
                  if (pass == null || pass
                      .trim()
                      .isEmpty) {
                    return "Please enter your password";
                  } else if (pass
                      .trim()
                      .isNotEmpty) {
                    if (!regExp.hasMatch(pass)) {
                      return "Minimum seven characters, at least\none uppercase letter,\none lowercase letter and \none number";
                    } else {
                      return null;
                    }
                  }
                },
              ),
              const SizedBox(height: 25),
              Myfield(
                lable: "mobile number",
                maxLength: 10,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp("[0-9]"),
                  ),
                ],
                validator: (call) {
                  if (call == null || call
                      .trim()
                      .isEmpty) {
                    return "Please enter phone number";
                  } else if (call
                      .trim()
                      .isNotEmpty) {
                    if (call
                        .trim()
                        .length != 10) {
                      return "Please enter valid phone number";
                    } else {
                      return null;
                    }
                  }
                },
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                  signed: false,
                ),
                hintText: "Enter your number",
              ),
              const SizedBox(height: 25),

              Myfield(
                  lable: "email",
                  hintText: "Enter your email",
                  validator: (gmail) {
                    if (gmail == null || gmail
                        .trim()
                        .isEmpty) {
                      return "Please enter your name";
                    }
                  }), const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('done');
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.green),
                  elevation: MaterialStateProperty.all<double>(2.0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                child: Text("SignIn"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
