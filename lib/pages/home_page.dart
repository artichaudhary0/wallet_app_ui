import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/button.dart';
import 'package:wallet_app_ui/utils/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "My",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: " Card",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400, shape: BoxShape.circle),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //cards
            SizedBox(
              height: 200,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CardTile(
                    balance: "10,250.29",
                    cardNumber: 0789,
                    expiryMonth: 05,
                    expiryYear: 26,
                    tileColor: Colors.blue.shade200,
                  ),
                  CardTile(
                    balance: "1,250.29",
                    cardNumber: 4576,
                    expiryMonth: 04,
                    expiryYear: 22,
                    tileColor: Colors.deepOrange.shade200,
                  ),
                  CardTile(
                    balance: "3,250.29",
                    cardNumber: 3486,
                    expiryMonth: 09,
                    expiryYear: 25,
                    tileColor: Colors.deepPurple.shade200,
                  ),
                  CardTile(
                    balance: "6,250.291",
                    cardNumber: 1678,
                    expiryMonth: 12,
                    expiryYear: 24,
                    tileColor: Colors.pink.shade200,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              controller: controller,
              count: 4,
            ),

            const SizedBox(
              height: 5,
            ),

            //3 buttons -> send ,pay, bills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonTile(
                  image: Image.asset("assets/send-money.png"),
                  text: 'Send',
                ),
                ButtonTile(
                  image: Image.asset("assets/bill.png"),
                  text: 'Send',
                ),
                ButtonTile(
                  image: Image.asset("assets/credit-card.png"),
                  text: 'Send',
                )
              ],
            ),

            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      child: Image.asset("assets/analysis.png"),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),

      //stats and transaction

      //bottom navigation bar
    );
  }
}
