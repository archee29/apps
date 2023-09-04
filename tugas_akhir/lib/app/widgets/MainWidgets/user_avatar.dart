import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final bool isMale;
  const UserAvatar({
    Key? key,
    required this.isMale,
    required this.radius,
  }) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: isMale
          ? AssetImage('assets/images/male-user1.png')
          : AssetImage('assets/images/female-user-1.png'),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
