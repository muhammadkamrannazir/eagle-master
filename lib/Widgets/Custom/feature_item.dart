import 'package:eagle/Widgets/custom_image.dart';
import 'package:eagle/theme2/color.dart';
import 'package:flutter/material.dart';

import 'favorite_box.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key, required this.data, this.onTap})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400,
        height: 200,
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(
              data["image"],
              width: 105,
              height: 180,
              radius: 10,
            ),
            const SizedBox(
              width: 10,
              height: 50,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data["name"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.red)),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(data["Parts"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 18, color: Colors.grey)),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        size: 14,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(data["rate"] + " (" + data["rate_number"] + ")",
                          style:
                              const TextStyle(fontSize: 14, color: Colors.red)),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Text(data["price"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.red)),
                const SizedBox(
                  height: 80,
                ),
                FavoriteBox(
                  iconSize: 20,
                  isFavorited: data["is_favorited"],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
