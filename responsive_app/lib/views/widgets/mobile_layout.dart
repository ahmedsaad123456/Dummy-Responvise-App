import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_silver_list.dart';
import 'package:responsive_app/views/widgets/custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomSliverGrid(),
        CustomSilverList(),
      ],
    );
  }
}