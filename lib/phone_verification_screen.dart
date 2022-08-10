// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:phoneauth/Services/firebase_services.dart';
// import 'package:phoneauth/custom_text_form_field.dart';

// class PhoneVerificationScreen extends StatefulWidget {
//   const PhoneVerificationScreen({Key? key}) : super(key: key);

//   @override
//   State<PhoneVerificationScreen> createState() =>
//       _PhoneVerificationScreenState();
// }

// class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
//   final TextEditingController controller = TextEditingController();
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   void phoneSignIn() {
//     FirebaseAuthMethods(auth: FirebaseAuth.instance)
//         .phoneSignIn(context, controller.text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 80,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: CustomTextFormField(
//               controller: controller,
//               hintText: 'Enter phone number',
//               textInputType: TextInputType.emailAddress,
//             ),
//           ),
//           SizedBox(height: 20,),
//           ElevatedButton(onPressed: (){
//             phoneSignIn();
//           }, child: Text('Send'))
//         ],
//       ),
//     );
//   }
// }
