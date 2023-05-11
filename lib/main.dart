import 'package:flutter/material.dart';
import 'package:login_ui_exc_1/component/checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign in to your account'.toUpperCase(),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: "Enter email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey,
                        ),
                        onChanged: (String value) {},
                        validator: (value) =>
                            value!.isEmpty ? "Please enter email." : null,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            hintText: "Enter password",
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder()),
                        onChanged: (String value) {},
                        validator: (value) {
                          return value!.isEmpty
                              ? "Please enter password."
                              : null;
                        },
                      ),
                      Row(
                        children: [
                          CheckboxExample(),
                          Text('Keep me signed in')
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {},
                          child: Text("sign in".toUpperCase()),
                          color: Color.fromRGBO(116, 107, 222, 1),
                          textColor: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
            Text('Forgot your password?'),
          ],
        ),
      ),
    );
  }
}
