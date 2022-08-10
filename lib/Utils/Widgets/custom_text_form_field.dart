import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Icon? icon;
  final Widget? suffixIcon;
  final AutovalidateMode? autoValidateMode;
  final String? errorText;
  final FormFieldValidator<String?>? validator;
  final FormFieldSetter<String?>? onsaved;
  final Function(String)? onChanged;
  final bool isPass;
  final String? hintText;
  final TextInputType? textInputType;
  final Color? fillColor;
  const CustomTextFormField(
      {Key? key,
      this.validator,
      this.autoValidateMode,
      this.onChanged,
      this.fillColor = Colors.grey,
      this.onsaved,
      this.errorText,
      this.suffixIcon,
      this.controller,
      this.isPass = false,
      required this.hintText,
      required this.textInputType,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: autoValidateMode,
      decoration: InputDecoration(
          hintText: hintText,
          errorText: errorText,
          suffixIcon: suffixIcon,
          prefixIcon: icon,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          fillColor: fillColor,
          contentPadding: const EdgeInsets.all(8)),
      controller: controller,
      keyboardType: textInputType,
      obscureText: isPass,
      onSaved: onsaved,
    );
  }
}





// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;

//   const CustomTextField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(color: Colors.transparent, width: 0),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: const BorderSide(color: Colors.transparent, width: 0),
//         ),
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//         filled: true,
//         fillColor: const Color(0xffF5F6FA),
//         hintText: hintText,
//         hintStyle: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );
//   }}