import '../qr_code_page.dart';
import '../../shared/theme.dart';
import '../../widget/card_other_feature.dart';
import '../../widget/card_promo.dart';
import '../../widget/custom_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List menuList = [
      {'assets/image/icon/home-icon-Food.png', 'Food'},
      {'assets/image/icon/home-icon-Mart.png', 'Mart'},
      {'assets/image/icon/home-icon-Transport.png', 'Transport'},
      {'assets/image/icon/home-icon-Assistant.png', 'Assistant'},
      {'assets/image/icon/home-icon-Delivery.png', 'Delivery'},
      {'assets/image/icon/home_icon_Gift.png', 'Offers'},
      {'assets/image/icon/home-icon-Gift.png', 'Gift Card'},
      {'assets/image/icon/home_icon_Insurance.png', 'Insurance'},
      {'assets/image/icon/home-icon-Hotels.png', 'Hotels'},
      {'assets/image/icon/home-icon-Rent.png', 'Rent'},
      {'assets/image/icon/home-icon-Personal-Loan.png', 'Pay Loan'},
      {'assets/image/icon/home_icon_Other.png', 'Other'},
    ];
    handleMenu() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Food.png',
                title: 'Food'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Mart.png',
                title: 'Mart'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Transport.png',
                title: 'Transport'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Assistant.png',
                title: 'Asistant'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Delivery.png',
                title: 'Delivery'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home_icon_Gift.png',
                title: 'Offer'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Gift.png',
                title: 'Gift Card'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home_icon_Insurance.png',
                title: 'Insurance'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Hotels.png',
                title: 'Hotels'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Rent.png',
                title: 'Rent'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home-icon-Personal-Loan.png',
                title: 'Pay Loan'),
            CustomMenu(
                imageUrl: 'assets/image/icon/home_icon_Other.png',
                title: 'Other'),
          ],
        ),
      );
    }

    handleShowDialog() {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            title: Text(
              '\"Grab\" Would Like to Access the Camera',
              textAlign: TextAlign.center,
              style: sanomatBlack.copyWith(fontWeight: medium, fontSize: 17),
            ),
            content: Text(
              'This let you scans code for payments and take photo for catch or support',
              textAlign: TextAlign.center,
              style: sanomatBlack.copyWith(fontSize: 13),
            ),
            actions: [
              Expanded(
                child: Column(
                  children: [
                    const Divider(thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Don\'t Allow'),
                        ),
                        const VerticalDivider(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QRCodePage()));
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          );
        },
      );
    }

    return ListView(
      shrinkWrap: true,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 64,
                  color: bgGreenColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 63),
                        handleMenu(),
                        const SizedBox(height: 30),
                        Row(
                          children: const [
                            CardOtherFeature(
                                title: 'Activate',
                                content: 'GrabPay',
                                imageUrl: 'assets/image/icon/Wallet-_icon.png'),
                            CardOtherFeature(
                                title: 'Use Point',
                                content: '758',
                                imageUrl: 'assets/image/icon/Crown_icon.png'),
                          ],
                        ),
                        const SizedBox(height: 38),
                        Text(
                          'Celebrate Mid-Autumn Festival',
                          style: sanomatBlack.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(height: 16),
                        GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.6,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: const [
                            CardPromo(
                                imageUrl: 'assets/image/promo1.png',
                                title: 'Order mooncakes to gift & to enjoy',
                                expiredPromo: 'Until 21 Sep'),
                            CardPromo(
                                imageUrl: 'assets/image/promo2.png',
                                title: 'Plus an EXTRA \$20 OFF on groceries',
                                expiredPromo: 'Until 31 Aug')
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Text('Tes'),
                      ]),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 12, right: 12),
              width: MediaQuery.of(context).size.width - (2 * 12),
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('assets/image/icon/Search_icon.png',
                        width: 20, height: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 155,
                    child: TextFormField(
                        cursorColor: greenColor,
                        style: sanomatBlack.copyWith(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Starbucks',
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintStyle: sanomatSubtitle2.copyWith(fontSize: 16),
                        )),
                  ),
                  const VerticalDivider(
                    thickness: 1.5,
                  ),
                  GestureDetector(
                    onTap: handleShowDialog,
                    child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Image.asset('assets/image/icon/Scanner_icon.png',
                          width: 21.5, height: 21.5, fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
