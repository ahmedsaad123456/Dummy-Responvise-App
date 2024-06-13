import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {

    // list view is lazy builder 
    // build the item in the screen now 
    // and by scrolling the list view build the rest
    // so it can't be used intrinsicHight Widget 

    // because scrollDirection is horizontal 
    // the list view must take a height
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16),
              child: AspectRatio(
                aspectRatio: 1,
                child: CustomItem()),
            );
          },
        ),
      ),
    );
  }
}
