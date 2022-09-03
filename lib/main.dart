import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/background.png'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10,),

                        Text("Food Panda",
                            style: TextStyle(

                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple)),
                        Padding(

                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 30),
                          child: TextFormField(
                            style: TextStyle(fontSize: 20),
                            decoration: const InputDecoration(

                              border: UnderlineInputBorder(),
                              labelText: 'Enter your username',

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            obscureText: true,

                            style: TextStyle(
                              fontSize: 20
                            ),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter your Password',


                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            primary: Colors.purple,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Login',style: TextStyle(fontSize: 30)),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                         child: SignInButton(

                            Buttons.Google,
                            text: "Sign up with Google",
                            onPressed: () {},
                          ),

                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          child: SignInButton(
                          Buttons.Facebook,
                          text: "Sign up with Google",
                          onPressed: () {},
                        ),),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
