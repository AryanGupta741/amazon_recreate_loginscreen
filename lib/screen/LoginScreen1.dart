import 'dart:ui';
import 'package:amazon_recreate_loginscreen/logicFiles/waveForm.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// The text Field is created with help of Listview.builder or Listview.seprated
// The LoginScreen is class is create beacuse Listview.builder is not apply suffice and visibility logic.
// if you not used the visibility logic in password textfield then used LogicScreen otherwise LogicScreen1

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // const Loginscreen({super.key});
  var _isPasswordVisible = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/LoginImage3.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'LogIn',
                    style: TextStyle(fontSize: 50, fontFamily: 'DancingFont'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 90,
                  child: waveform(),
                ),
                Stack(
                  children: [
                    Container(
                      height: 450,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(60.0, 60.0),
                          bottomRight: Radius.elliptical(60.0, 60.0),
                        ),
                      ),
                    ),
                    Center(
                      child: Icon(
                        FontAwesomeIcons
                            .amazon, // Replace with your desired FontAwesome icon
                        color: Colors.black, // Set the icon color
                        size: 32.0, // Set the icon size
                      ),
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide:
                                      BorderSide(width: 2, color: Colors.green),
                                ),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  size: 30,
                                ),
                                hintText: 'Email or Mobile numbre',
                                labelText: 'Email or Mobile numbre',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            child: TextField(
                              obscureText: _isPasswordVisible,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.green)),
                                prefixIcon: Icon(
                                  Icons.lock_person,
                                  size: 30,
                                ),
                                hintText: 'Password',
                                labelText: 'Enter your password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    _togglePasswordVisibility();
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[50],
                                side: BorderSide(color: Colors.black),
                                shadowColor: Colors.black),
                            onPressed: () {
                              print('success');
                            },
                            child: Text('LogIn',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'DancingFont')),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[100],
                                side: BorderSide(color: Colors.black),
                                shadowColor: Colors.black),
                            onPressed: () {
                              print(
                                  'continously working do hard work on day you get a success');
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.solidHandshake,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red[100],
                                side: BorderSide(color: Colors.black),
                                shadowColor: Colors.black),
                            onPressed: () {
                              print(
                                  'continously working do hard work on day you get a success');
                            },
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red[300],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red[300],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.solidHandshake,
                                  color: Colors.red[300],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Create new account? SignUp'),
                        FaIcon(
                          FontAwesomeIcons.copyright,
                          size: 11,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
