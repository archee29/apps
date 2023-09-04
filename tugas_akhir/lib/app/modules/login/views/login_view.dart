import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/auth_controller.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_button.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_formfield.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_header.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_richtext.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  // const LoginView({Key? key}) : super(key: key);

  bool _isVisible = false;

  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 239, 62, 255).withOpacity(0.7),
            ),
            CustomHeader(
              text: 'Automatic Cat Feeder',
              onTap: () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => const SignUp()));
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
                      controller: controller.emailController,
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
                      obsecureText: !_isVisible,
                      suffixIcon: IconButton(
                          icon: Icon(_isVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            // setState(
                            //   () {
                            //     _isVisible = !_isVisible;
                            //   },
                            // );
                          }),
                      controller: controller.passwordController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                          child: InkWell(
                            onTap: () => Get.toNamed(Routes.RESET),
                            child: Text(
                              "Lupa Password?",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 239, 62, 255)
                                      .withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: AuthButton(
                        onTap: () => authC.login(
                            controller.emailController.text,
                            controller.passwordController.text),
                        text: 'Masuk',
                      ),
                    ),
                    CustomRichText(
                      discription: "Belum Punya Akun? ",
                      text: "Daftar Disini",
                      onTap: () => Get.toNamed(Routes.SIGNUP),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, -2),
                        blurRadius: 2,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                            left: 5,
                            right: 5,
                          ),
                          width: 65,
                          height: 65,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 62, 255)
                                  .withOpacity(0.7),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
