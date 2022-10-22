// ignore_for_file: camel_case_types
import 'package:eagle/Widgets/Custom/feature_item.dart';
import 'package:eagle/Widgets/Custom/w_collection_item.dart';
import 'package:eagle/Widgets/brands_name.dart';
import 'package:eagle/Widgets/custom_textbox.dart';
import 'package:eagle/utils/data.dart';
import 'package:flutter/material.dart';

class Body_Page extends StatefulWidget {
  const Body_Page({Key? key}) : super(key: key);

  @override
  State<Body_Page> createState() => _Body_PageState();
}

class _Body_PageState extends State<Body_Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 45,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: const Text(
                "Hello Abrar!",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 45,
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: const Text(
              "Find Your Wears",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: const CustomTextBox(
                  hint: "Search",
                  prefix:
                      Icon(Icons.search, color: Color.fromRGBO(220, 34, 34, 1)),
                  suffix: Icon(Icons.filter_list_outlined,
                      color: Color.fromRGBO(220, 34, 34, 1)))),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(bottom: 5, left: 15),
            child: Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Brands_names(
                    color: Colors.white,
                    images: AssetImage("assets/gul ahmad.PNG"),
                  ),
                  Brands_names(
                    color: Colors.white,
                    images: AssetImage("assets/alkram.PNG"),
                  ),
                  Brands_names(
                    color: Colors.white,
                    images: AssetImage("assets/j.PNG"),
                  ),
                  Brands_names(
                    color: Colors.white,
                    images: AssetImage("assets/khaadi.PNG"),
                  ),
                  Brands_names(
                    color: Colors.white,
                    images: AssetImage("assets/nishat.PNG"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
//-----------------------------------------------------------------------------------------------------------------------------------------------
          Container(
            child: listPopulars(),
          ),
          const SizedBox(
            height: 30,
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
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: listFeatured(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
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

listFeatured() {
  return Column(
    children: List.generate(
        featured.length, (index) => FeaturedItem(data: featured[index])),
  );
}
