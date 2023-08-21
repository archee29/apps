import 'package:flutter/material.dart';
import 'package:tugas_akhir/controllers/auth_controller.dart';
import 'package:tugas_akhir/styles/app_colors.dart';
import 'package:tugas_akhir/screens/login.dart';
import 'package:tugas_akhir/widgets/custom_button.dart';
import 'package:tugas_akhir/widgets/custom_formfield.dart';
import 'package:tugas_akhir/widgets/custom_header.dart';
import 'package:tugas_akhir/widgets/custom_richtext.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
              text: 'Form Daftar',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
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
                    child: Image.asset("assets/images/icon-kucing.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  // CustomFormField(
                  //   headingText: "Username",
                  //   icon: const Icon(Icons.people),
                  //   hintText: "Masukkan username",
                  //   obsecureText: false,
                  //   suffixIcon: const SizedBox(),
                  //   maxLines: 1,
                  //   textInputAction: TextInputAction.done,
                  //   textInputType: TextInputType.text,
                  //   controller: _userName,
                  // ),

                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    headingText: "Email",
                    hintText: "Email",
                    icon: const Icon(Icons.email),
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    controller: passwordController,
                    headingText: "Password",
                    icon: const Icon(Icons.password),
                    hintText: "Masukkan Password Dengan 8 Karakter",
                    obsecureText: true,
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.visibility), onPressed: () {}),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    child: AuthButton(
                      onTap: () {
                        AuthController.instance.register(
                            emailController.text.trim(),
                            passwordController.text.trim());
                      },
                      text: 'Daftar',
                    ),
                  ),
                  CustomRichText(
                    discription: 'Sudah Punya Akun? ',
                    text: 'Log In Disini',
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
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
