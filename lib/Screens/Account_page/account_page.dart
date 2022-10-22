import 'package:eagle/Screens/Account_page/account_items.dart';
import 'package:eagle/Screens/SignIn/sign_in.dart';
import 'package:eagle/Widgets/Custom/Custom_nav/customnav.dart';
import 'package:eagle/theme/color.dart';
import 'package:eagle/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Widgets/custom_image.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomNavbar(),
        backgroundColor: const Color.fromRGBO(220, 34, 34, 1),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromRGBO(220, 34, 34, 1),
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )),
      ],
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Column(
            children: <Widget>[
              CustomImage(
                profile["image"]!,
                width: 80,
                height: 80,
                radius: 100,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                profile["name"]!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                profile["email"]!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          SettingItem(
              title: "My Orders",
              leadingIcon: Icons.local_mall_outlined,
              leadingIconColor: blue,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "Favorites",
              leadingIcon: Icons.favorite,
              leadingIconColor: red,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "Appearance",
              leadingIcon: Icons.dark_mode_outlined,
              leadingIconColor: purple,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "Notification",
              leadingIcon: Icons.notifications_outlined,
              leadingIconColor: orange,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
              title: "Privacy",
              leadingIcon: Icons.privacy_tip_outlined,
              leadingIconColor: green,
              onTap: () {}),
          const SizedBox(height: 10),
          SettingItem(
            title: "Sign Out",
            leadingIcon: Icons.logout_outlined,
            leadingIconColor: Colors.grey.shade400,
            onTap: () {
              showConfirmLogout();
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
            message: const Text("Would you like to sign out?"),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () {
                  Get.to(() => const Sign_In());
                },
                child: const Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )));
  }
}
