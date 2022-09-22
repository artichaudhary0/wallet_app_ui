import 'package:flutter/material.dart';

class ButtonTile extends StatelessWidget {
  const ButtonTile({Key? key, required this.text, required this.image})
      : super(key: key);

  final String text;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Container(
                  height: 90,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 40,
                            spreadRadius: 10)
                      ]),
                  child: Center(child: image),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


