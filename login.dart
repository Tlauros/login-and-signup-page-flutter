import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Login Page')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 80.0,
              left: 4.0,
            ),
            width: 320.0,
            height: 90.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logologin.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 50.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            alignment: Alignment(0.0, 0.0),
            child: InkWell(
                child: Text(
              'Forgot Password',
              style: TextStyle(
                  color: Color.fromARGB(255, 22, 136, 230),
                  fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50.0,
            width: 290.0,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Color.fromARGB(213, 114, 185, 243),
              color: Colors.blue,
              elevation: 20.0,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserra',
                      fontSize: 30.0),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 95.0,
          ),
          InkWell(
            child: Center(
              child: const Text(
                'New User? Create Account',
              ),
            ),
            onTap: () {
              print("pressed");
            },
          ),
        ],
      ),
    );
  }
}
