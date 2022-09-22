import 'package:flutter/material.dart';

class ButtonTile extends StatelessWidget {
  const ButtonTile({Key? key, required this.text, required this.image})
      : super(key: key);

  final String text;
  final String image;

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
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade50),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 10,
                      )
                    ],
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade50),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(color: Colors.white, spreadRadius: 10)
                        ],
                      ),
                      child: Center(child: Image.asset(image))),
                ),
                const SizedBox(
                  height: 20,
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
