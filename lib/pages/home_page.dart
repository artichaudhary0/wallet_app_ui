// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/utils/button.dart';
import 'package:wallet_app_ui/utils/card.dart';
import 'package:wallet_app_ui/utils/my_list_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: const Radius.circular(30),
            topRight: const Radius.circular(30)),
        child: BottomAppBar(
            color: Colors.blue.shade500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.home,
                    size: 35,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    size: 35,
                    color: Colors.white,
                  )
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.monetization_on_outlined,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
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
                          color: Colors.blue.shade500, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
                      tileColor: Colors.blue.shade600,
                    ),
                    CardTile(
                      balance: "1,250.29",
                      cardNumber: 4576,
                      expiryMonth: 04,
                      expiryYear: 22,
                      tileColor: Colors.deepOrange.shade600,
                    ),
                    CardTile(
                      balance: "3,250.29",
                      cardNumber: 3486,
                      expiryMonth: 09,
                      expiryYear: 25,
                      tileColor: Colors.deepPurple.shade600,
                    ),
                    CardTile(
                      balance: "6,250.291",
                      cardNumber: 1678,
                      expiryMonth: 12,
                      expiryYear: 24,
                      tileColor: Colors.pink.shade600,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                    activeDotColor: Colors.blue.shade500,
                    dotColor: Colors.blue.shade500),
                controller: controller,
                count: 4,
              ),

              const SizedBox(
                height: 15,
              ),

              //3 buttons -> send ,pay, bills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ButtonTile(
                    image: "assets/send-money.png",
                    text: 'Send',
                  ),
                  ButtonTile(
                    image: "assets/bill.png",
                    text: 'Bill',
                  ),
                  ButtonTile(
                    image: "assets/credit-card.png",
                    text: 'Card',
                  )
                ],
              ),

              const MyListTile(
                iconImagePath: 'assets/analysis.png',
                subTitleTile: "Payment and Income",
                tileTitle: 'Statistic',
              ),
              const MyListTile(
                iconImagePath: 'assets/bill.png',
                subTitleTile: 'Electricity Bill',
                tileTitle: 'Bill',
              ),
              const MyListTile(
                iconImagePath: 'assets/credit-card.png',
                subTitleTile: 'Details',
                tileTitle: 'card Details',
              ),
              const MyListTile(
                iconImagePath: 'assets/money-transfer.png',
                subTitleTile: 'Send Money',
                tileTitle: 'Money Transfer',
              ),
              const MyListTile(
                iconImagePath: 'assets/send-money.png',
                subTitleTile: 'History',
                tileTitle: 'History',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
