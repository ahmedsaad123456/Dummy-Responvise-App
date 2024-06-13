import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';
import 'package:responsive_app/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    // we should be minus 32 from the width to make the width 
    // media query equal to the layout builder width
    // because the parent widget of the layout builder take padding
    // 16 horizontal so we need to minus 32 
    return MediaQuery.sizeOf(context).width-32 < 900
        ? AppBar(
            leading: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          )
        : null;
  }
}
