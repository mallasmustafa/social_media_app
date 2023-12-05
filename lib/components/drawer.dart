import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOut;
  const MyDrawer({
    super.key,
    required this.onProfileTap,
    required this.onSignOut,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //header
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 64,
                ),
              ),
              //home list tile
              MyListTile(
                  text: "H O M E",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              //profile list tile
              MyListTile(
                text: 'P R O F I L E',
                icon: Icons.person,
                onTap: onProfileTap,
              ),
            ],
          ),

          //logout list tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: onSignOut,
            ),
          ),
        ],
      ),
    );
  }
}
