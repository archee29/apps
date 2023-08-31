import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String discription;
  final String text;
  final Function() onTap;
  const CustomRichText(
      {Key? key,
      required this.discription,
      required this.text,
      required this.onTap})
      : super(key: key);
// "Don't already Have an account? "
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.175,
          top: MediaQuery.of(context).size.height * 0.05),
      child: Text.rich(
        TextSpan(
          text: discription,
          style: const TextStyle(color: Colors.black87, fontSize: 16),
          children: [
            TextSpan(
                text: text,
                style: const TextStyle(
                  color: Color.fromARGB(255, 239, 62, 255),
                  fontSize: 16,
                ),
                recognizer: TapGestureRecognizer()..onTap = onTap),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
