import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:phoneauth/Screen/login.dart';

import '../Services/firebase_services.dart';
import '../Utils/Widgets/facebook_button.dart';
import '../Utils/Widgets/google_button.dart';
import '../Utils/Widgets/line_icon_widget.dart';
import '../Utils/Widgets/logup_button.dart';
import '../Utils/assets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final TextEditingController confirmPassWordController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  //var confirmPass;
  var email = "";
  var password = "";
  var confirmpassword = "";
  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();
    confirmPassWordController.dispose();
    super.dispose();
  }

  Future signUpUser() async {
    if (passWordController.text.trim() ==
        confirmPassWordController.text.trim()) {
      print('signing up');
      FirebaseAuthMethods(FirebaseAuth.instance).signupWithEmail(
        email: emailController.text,
        password: passWordController.text,
        context: context,
      );
    } else {
      return CircularProgressIndicator();
    }
  }

  void googleUsers() {
    FirebaseAuthMethods(FirebaseAuth.instance).googleSignIn(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: Svg(
                  Assets.loginimage,
                ),
                // fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: const [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: const [
                          Text(
                            'Sign Up with your username or email',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      height: 150,
                      width: 280,
                      //color: Colors.grey,
                      child: Column(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (email) => email != null &&
                                      !EmailValidator.validate(email)
                                  ? 'Enter a valid email'
                                  : null,
                              onSaved: (value) {
                                emailController.text = value!;
                              },
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Enter your email',
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: passWordController,
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                //confirmPass = value;
                                if (value!.isEmpty) {
                                  return "Please Enter PassWord";
                                }
                                // else if (value.length < 6) {
                                //   return "Password must be atleast 6 numbers";
                                // }
                                //else {
                                return null;
                                // }
                              },
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Enter your password',
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: confirmPassWordController,
                              obscureText: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Re-Enter New Password";
                                }
                                return null;
                                //  }
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Enter your confirm password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: signUpUser,
                      child: const LogUpButton(
                        text: 'Sign Up',
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: ((context) {
                          return const LoginScreen();
                        })), (route) => false);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Already register',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Social login can save your valuable time',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const LineIconWidget(),
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: googleUsers,
                            child: const GoogleButton(),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('fb ');
                            },
                            child: const FacebookButton(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
