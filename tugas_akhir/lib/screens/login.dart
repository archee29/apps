// import 'package:firebase_app/signup_page.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tugas_akhir/controllers/auth_controller.dart';
// import 'package:tugas_akhir/screens/signup_page.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
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
//                       hintText: "Email",
//                       prefixIcon: Icon(
//                         Icons.email,
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
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(),
//                     ),
//                     Text(
//                       "Lupa Kata Sandi? ",
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                         decorationColor: Colors.pinkAccent,
//                         fontSize: 18,
//                         color: Colors.grey[500],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 70,
//           ),
// GestureDetector(
//   onTap: () {
//     AuthController.instance.login(
//         emailController.text.trim(), passwordController.text.trim());
//   },
//   child: Container(
//     width: w * 0.5,
//     height: h * 0.08,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30),
//       image: DecorationImage(
//         image: AssetImage("assets/images/button_login.png"),
//         fit: BoxFit.cover,
//       ),
//     ),
//     child: Center(
//       child: Text(
//         "Masuk",
//         style: TextStyle(
//           fontSize: 35,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   ),
// ),
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
import 'package:tugas_akhir/controllers/auth_controller.dart';
import 'package:tugas_akhir/styles/app_colors.dart';
import 'package:tugas_akhir/screens/signup_page.dart';
import 'package:tugas_akhir/widgets/custom_button.dart';
import 'package:tugas_akhir/widgets/custom_formfield.dart';
import 'package:tugas_akhir/widgets/custom_header.dart';
import 'package:tugas_akhir/widgets/custom_richtext.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 239, 62, 255).withOpacity(0.7),
          ),
          CustomHeader(
            text: 'Halaman Log In',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.whiteshade,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.09),
                    child: Image.asset("assets/images/icon-kucing.png"),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomFormField(
                    headingText: "Email",
                    hintText: "Masukkan Email",
                    icon: const Icon(Icons.email),
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    controller: emailController,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    headingText: "Password",
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    icon: const Icon(Icons.password),
                    hintText: "Masukkan Password Dengan 8 Karakter",
                    obsecureText: true,
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility), onPressed: () {}),
                    controller: passwordController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Lupa Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 62, 255)
                                    .withOpacity(0.7),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: AuthButton(
                      onTap: () {
                        AuthController.instance.login(
                            emailController.text.trim(),
                            passwordController.text.trim());
                      },
                      text: 'Log In',
                    ),
                  ),
                  CustomRichText(
                    discription: "Belum Punya Akun? ",
                    text: "Daftar Disini",
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
