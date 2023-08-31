import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:tugas_akhir/auth_controller.dart';
import 'package:tugas_akhir/app/controllers/auth_controller.dart';

class SideMenu extends StatelessWidget {
  // const SideMenu({super.key});
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset(
              "assets/images/brand.png",
            )),
          ),
          DrawerListTile(
            icon: Icons.home,
            title: "Home",
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.menu,
            title: "Main Menu",
            onTap: () {
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => HomeScreen(
              //               email: '',
              //             )));
            },
          ),
          DrawerListTile(
            icon: Icons.wifi,
            title: "IoT",
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.settings,
            title: "Settings",
            onTap: () {},
          ),
          DrawerListTile(
            icon: Icons.logout,
            title: "Keluar",
            onTap: () => authC.logout(),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/help.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Upgrade your plan",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Go to Pro",
                        style: TextStyle(color: Colors.white)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 247, 56, 120)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: Color.fromARGB(255, 255, 105, 155),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
