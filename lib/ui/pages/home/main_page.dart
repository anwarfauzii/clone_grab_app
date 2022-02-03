import 'package:clone_grab/ui/pages/home/account_page.dart';
import 'package:clone_grab/ui/pages/home/activity_page.dart';
import 'package:clone_grab/ui/pages/home/inbox_page.dart';
import 'package:clone_grab/ui/pages/home/payment_page.dart';
import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    body() {
      switch (currentIndex) {
        case 1:
          return const ActivityPage();
        case 2:
          return const PaymentPage();
        case 3:
          return const InboxPage();
        case 4:
          return const AccountPage();
        default:
          return const HomePage();
      }
    }

    bottomNavBar() {
      return SizedBox(
        height: 60,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: whiteColor,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedLabelStyle: sanomatGreen,
          selectedItemColor: greenColor,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/image/icon/home.png',
                  width: 22,
                  height: 22,
                  // color: currentIndex == 0 ? bgGreenColor : bgMenuUnselectColor,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/image/icon/Activity_icon.png',
                  width: 22,
                  height: 22,
                  // color: currentIndex == 1 ? bgGreenColor : bgMenuUnselectColor,
                ),
                label: 'Activity'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/image/icon/Payment_icon.png',
                  width: 22,
                  height: 22,
                  // color: currentIndex == 2 ? bgGreenColor : bgMenuUnselectColor,
                ),
                label: 'Payment'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/image/icon/Inbox_icon.png',
                  width: 22,
                  height: 22,
                  // color: currentIndex == 2 ? bgGreenColor : bgMenuUnselectColor,
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/image/icon/Profile_icon.png',
                  width: 22,
                  height: 22,
                  // color: currentIndex == 2 ? bgGreenColor : bgMenuUnselectColor,
                ),
                label: 'Account'),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }
}
