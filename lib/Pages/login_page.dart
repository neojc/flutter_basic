import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40.0),
                  Center(
                      child: ClipOval(
                          child: Image.asset("assets/images/logo.jpg",
                              width: MediaQuery.of(context).size.width * 0.6))),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Correo",
                        hintText: "usuario@localhost.com"),
                    keyboardType: TextInputType.emailAddress,
                    controller: null,
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Contraseña",
                        hintText: "**********"),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    controller: null,
                  ),
                  SizedBox(height: 40.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), primary: Colors.blue),
                      child: Text("Iniciar Sesión"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text("¿Todavía no tienes una cuenta?"),
                  TextButton(
                      child: Text("!Regístrate aquí!"), onPressed: () {}),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ));
  }
}
