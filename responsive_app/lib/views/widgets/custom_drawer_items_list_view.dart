import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/views/widgets/custom_drawer_item.dart';


class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItemModel: items[index]);
      },
      itemCount: items.length,
    );
  }
}
