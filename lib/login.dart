import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:login/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    List images = ["google.png", "twitter.png", "fb.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/bg2.jpg"), fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.07,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 40,
                    backgroundImage: AssetImage("img/logo.png"),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Welcome to Termomete",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lemon-Regular',
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 8.0,
                          color: Color.fromARGB(125, 0, 0, 255),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'ArchivoBlack-Regular',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "   Enter your email",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15.0,
                        ),
                        labelText: "Email",
                        helperStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.email),
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                        hintText: "   Enter your password",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 15.0,
                        ),
                        labelText: "Password",
                        helperStyle: TextStyle(color: Colors.blue),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(
                              () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        prefixIcon: Icon(Icons.password),
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Forgot your Password?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/signout');
                },
                child: Container(
                  width: w * 0.9,
                  height: h * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: w * 0.03),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[500],
                      thickness: 1.0,
                      indent: 15.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[500],
                      thickness: 1.0,
                      endIndent: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: w * 0.03),
            RichText(
                text: TextSpan(
              text: "Sign in using one of the following methods",
              style: TextStyle(color: Colors.grey[500], fontSize: 16),
            )),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue[200],
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("img/" + images[index]),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 1.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Termomete ?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: Text(
                      "   Register",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
