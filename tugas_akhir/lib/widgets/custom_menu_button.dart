import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool isStatistics = false;
  bool isIot = false;
  bool isHome = true;
  bool isSetting = false;
  bool isLogOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.insert_chart_outlined,
                          color: isStatistics ? Colors.pinkAccent : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isStatistics = true;
                            isIot = false;
                            isSetting = false;
                            isLogOut = false;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.wifi,
                          color: isIot ? Colors.pinkAccent : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isStatistics = false;
                            isIot = true;
                            isSetting = false;
                            isLogOut = false;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: isSetting ? Colors.pinkAccent : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isStatistics = false;
                            isIot = false;
                            isSetting = true;
                            isLogOut = false;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.login_outlined,
                          color: isLogOut ? Colors.pinkAccent : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isStatistics = false;
                            isIot = false;
                            isSetting = false;
                            isLogOut = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
