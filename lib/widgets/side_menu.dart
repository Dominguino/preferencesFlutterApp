import "package:flutter/material.dart";

import "../screens/screens.dart";

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outlined),
            title: const Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              // Navigator.pop(context); //cierra el context actual
              Navigator.pushReplacementNamed(
                  context, SettingsScreen.routerName);
            },
          )
        ],
      ),
    );
  }

  DrawerHeader _DrawerHeader() {
    return DrawerHeader(
        child: Container(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)));
  }
}
