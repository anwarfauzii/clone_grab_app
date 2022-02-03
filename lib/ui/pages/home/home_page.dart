import 'package:clone_grab/ui/shared/theme.dart';
import 'package:clone_grab/ui/widget/card_other_feature.dart';
import 'package:clone_grab/ui/widget/custom_menu.dart';
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

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 64,
          color: bgGreenColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 63),
              // ElevatedButton(
              //     onPressed: () {
              //       print(menuList);
              //     },
              //     child: Text('Cek')),
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
            ],
          ),
        ),
      ],
    );
  }
}
