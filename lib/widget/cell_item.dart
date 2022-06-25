import 'package:flutter/material.dart';

class CellItem extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? imageName;
  final String? subBigImageName;
  final String? subImageName;

  const CellItem(
      {this.title,
      this.subTitle,
      this.imageName,
      this.subBigImageName,
      this.subImageName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Colors.white,
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(imageName!),
                    width: 24,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    title!,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 10, right: 30),
              child: Row(
                children: [
                  subTitle != null ? Text(subTitle!) : const Text(""),
                  subBigImageName != null
                      ? Image(
                          image: AssetImage(subBigImageName!),
                          width: 28,
                        )
                      : Container(),
                  subImageName != null
                      ? Image(
                          image: AssetImage(subImageName!),
                          width: 20,
                        )
                      : Container(),
                  (subBigImageName != null ||subImageName != null) ? const SizedBox(width: 12,) : const SizedBox(),
                  const Image(
                    image: AssetImage('images/icon_right.png'),
                    width: 14,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
