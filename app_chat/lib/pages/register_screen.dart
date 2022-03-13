import 'package:app_chat/pages/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Email",
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Username",
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Input username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Password",
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Input password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey,
                    ),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Already Have Account registered ?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Click Here!",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Or"),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("assets/images/google.png"),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("assets/images/facebook.png"),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset("assets/images/twitter.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
