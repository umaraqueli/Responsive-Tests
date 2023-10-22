import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserRegistrationForm(),
    );
  }
}

class UserRegistrationForm extends StatefulWidget {
  @override
  _UserRegistrationFormState createState() => _UserRegistrationFormState();
}

class _UserRegistrationFormState extends State<UserRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    var teste = MediaQuery.of(context).size.width;
    print(teste);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Center(
        child: Container(
          margin: MediaQuery.of(context).size.width > 600
              ? EdgeInsets.symmetric(horizontal: 300)
              : EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Align(
                  child: !kIsWeb
                      ? ElevatedButton(
                          onPressed: () {},
                          child: Text('Cadastrar'),
                        )
                      : ElevatedButton(
                          onPressed: () {}, child: Text('Cadastrar no web'))),
            ],
          ),
        ),
      ),
    );
  }
}
