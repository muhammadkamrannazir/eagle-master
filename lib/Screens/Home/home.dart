import 'package:eagle/Screens/Checkouts/check_outs.dart';
import 'package:eagle/Screens/Home/Home_Body/body.dart';
import 'package:eagle/Widgets/Custom/customdrawer/custom_drawer.dart';
import 'package:eagle/Widgets/notification_box.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/Custom/Custom_nav/customnav.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: const Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(220, 34, 34, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(220, 34, 34, 1),
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4 * 3.1,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 290),
                    child: NotificationBox(
                      number: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
          body: const Body_Page(),
          bottomNavigationBar: const CustomNavbar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            hoverColor: Colors.red,
            elevation: 10,
            highlightElevation: 10,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            onPressed: () {
              Get.to(() => const CheckoutPage());
            },
            child: const Icon(
              Icons.add_shopping_cart_rounded,
              color: Color.fromRGBO(220, 34, 34, 1),
            ),
          ),
          drawer: const Custom_Drawer()),
    );
  }
}
