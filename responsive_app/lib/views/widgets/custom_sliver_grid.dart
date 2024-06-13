import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      // there is fixed number of item in x axis (2)
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return const CustomItem();
      },
      itemCount: 4,
    );
  }
}
