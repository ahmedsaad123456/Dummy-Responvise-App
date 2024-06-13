import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_item_2.dart';

class CustomSilverList extends StatelessWidget {
  const CustomSilverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomItem2(),
        );
      },
      itemCount: 15,
    );
  }
}

