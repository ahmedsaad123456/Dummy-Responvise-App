import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/views/widgets/custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  // there is one copy for this list even there are many objects of this class
  // and this is the reason to put keyword "static" before const 

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: "D A S H B O A R D", icon: Icons.home),
    DrawerItemModel(title: "S E T T I N G S", icon: Icons.settings),
    DrawerItemModel(title: "A B O U T", icon: Icons.info),
    DrawerItemModel(title: "L O G O U T", icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomDrawerItemsListView(items: items)
        ],
      ),
    );
  }
}
