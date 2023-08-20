// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tugas_akhir/controllers/auth_controller.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var emailController = TextEditingController();
//     var passwordController = TextEditingController();

//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Container(
//             width: w,
//             height: h * 0.3,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/apps name text.png"),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Container(
//             width: w,
//             height: h * 0.3,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/icon apps.png"),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 20, right: 20),
//             width: w,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 10,
//                         spreadRadius: 7,
//                         offset: Offset(1, 1),
//                         color: Colors.grey.withOpacity(0.5),
//                       )
//                     ],
//                   ),
//                   child: TextField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                       labelText: "Username",
//                       prefixIcon: Icon(
//                         Icons.people,
//                         color: Colors.pinkAccent,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(
//                           color: Colors.white,
//                           width: 1.0,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(
//                           color: Colors.white,
//                           width: 1.0,
//                         ),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 10,
//                         spreadRadius: 7,
//                         offset: Offset(1, 1),
//                         color: Colors.grey.withOpacity(0.5),
//                       )
//                     ],
//                   ),
//                   child: TextField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: "Password",
//                       prefixIcon: Icon(
//                         Icons.lock,
//                         color: Colors.pinkAccent,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(color: Colors.white, width: 1.0),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                         borderSide: BorderSide(color: Colors.white, width: 1.0),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 70,
//           ),
//           GestureDetector(
//             onTap: () {
//               AuthController.instance.register(
//                   emailController.text.trim(), passwordController.text.trim());
//             },
//             child: Container(
//               width: w * 0.5,
//               height: h * 0.08,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 image: DecorationImage(
//                   image: AssetImage("assets/images/button_login.png"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Center(
//                 child: Text(
//                   "Daftar",
//                   style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: w * 0.08,
//           ),
//           RichText(
//             text: TextSpan(
//               text: "Done\'n have an Account? ",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontSize: 20,
//               ),
//               children: [
//                 TextSpan(
//                     text: "Create",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     recognizer: TapGestureRecognizer()
//                       ..onTap = () => Get.to(() => SignUpPage())),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tugas_akhir/styles/app_colors.dart';
import 'package:tugas_akhir/screens/login.dart';
import 'package:tugas_akhir/widgets/custom_button.dart';
import 'package:tugas_akhir/widgets/custom_formfield.dart';
import 'package:tugas_akhir/widgets/custom_header.dart';
import 'package:tugas_akhir/widgets/custom_richtext.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _userName = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get userName => _userName.text.trim();
  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.blue,
          ),
          CustomHeader(
              text: 'Sign Up.',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Signin()));
              }),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteshade,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    child: Image.asset("assets/images/login.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    headingText: "UserName",
                    hintText: "username",
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    controller: _userName,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    headingText: "Email",
                    hintText: "Email",
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    controller: _passwordController,
                    headingText: "Password",
                    hintText: "At least 8 Character",
                    obsecureText: true,
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility), onPressed: () {}),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AuthButton(
                    onTap: () {},
                    text: 'Sign Up',
                  ),
                  CustomRichText(
                    discription: 'Already Have an account? ',
                    text: 'Log In here',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signin()));
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
