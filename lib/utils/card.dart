import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile(
      {Key? key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.tileColor})
      : super(key: key);

  final String balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color tileColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Image.asset(
                  "assets/v.png",
                  height: 50,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$" + "$balance",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "**** **** **** $cardNumber",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "$expiryMonth/$expiryYear",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
