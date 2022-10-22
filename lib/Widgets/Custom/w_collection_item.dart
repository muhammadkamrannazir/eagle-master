import 'package:flutter/material.dart';
import 'package:eagle/theme2/color.dart';
import 'favorite_box.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key, required this.data}) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 0),
      height: 250, width: 140,
      // color: secondary,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              height: 200,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(data["image"])),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 15,
              child: FavoriteBox(
                isFavorited: data["is_favorited"],
              )),
          Positioned(
            top: 210,
            child: SizedBox(
                width: 220,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            data["name"],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                          const SizedBox(
                            width: 100,
                          ),
                          Text(
                            data["price"],
                            style: const TextStyle(
                                fontSize: 14,
                                color: primary,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}
