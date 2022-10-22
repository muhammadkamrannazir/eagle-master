import 'package:eagle/Widgets/Custom/Custom_nav/customnav.dart';
import 'package:eagle/Widgets/Custom/w_collection_item.dart';
import 'package:eagle/Widgets/notification_box.dart';
import 'package:eagle/utils/data.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(220, 34, 34, 1),
        bottomNavigationBar: const CustomNavbar(),
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: const Text(
                  "Featured",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
                color: Colors.white,
                endIndent: 20,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: listPopulars(),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: listPopulars(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: listPopulars(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: listPopulars(),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: listPopulars(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

listPopulars() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      children: List.generate(
          populars.length,
          (index) => PopularItem(
                data: populars[index],
              )),
    ),
  );
}
