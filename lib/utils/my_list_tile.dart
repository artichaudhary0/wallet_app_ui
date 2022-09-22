import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {Key? key,
      required this.iconImagePath,
      required this.tileTitle,
      required this.subTitleTile})
      : super(key: key);
  final String iconImagePath;
  final String tileTitle;
  final String subTitleTile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue.shade50),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(iconImagePath),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tileTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      subTitleTile,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
