import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';


import '../Services/firebase_services.dart';
import '../Utils/Widgets/facebook_button.dart';
import '../Utils/Widgets/google_button.dart';
import '../Utils/Widgets/line_icon_widget.dart';
import '../Utils/Widgets/logup_button.dart';
import '../Utils/assets.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  void loginUser() {
    FirebaseAuthMethods(FirebaseAuth.instance).emailSignIn(
      email: emailController.text,
      context: context,
      password: passWordController.text,
    );
  }

  void googleUsers() {
    FirebaseAuthMethods(FirebaseAuth.instance).googleSignIn(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 110,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: const [
                      Text(
                        'Sign In',
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
                        'Sign In with your username or email',
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
                  height: 98,
                  width: 280,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: 'Enter your email',
                        ),
                      ),
                      TextFormField(
                        controller: passWordController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: 'Enter your password',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: loginUser,
                  child: const LogUpButton(
                    text: 'SignIn',
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: ((context) {
                      return const SignUpScreen();
                    })), (route) => false);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Create Account',
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
    );
  }
}
//  CustomTextFormField(
//             controller: emailController,
//             hintText: 'hintText',
//             textInputType: TextInputType.emailAddress,
//           ),
//           CustomTextFormField(
//             controller: passWordController,
//             hintText: 'Enter your PassWord',
//             textInputType: TextInputType.number,
//           ),