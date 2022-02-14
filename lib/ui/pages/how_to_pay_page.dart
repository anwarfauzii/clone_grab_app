import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class HowToPayPage extends StatelessWidget {
  const HowToPayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar(
                //   leading: Icon(
                //     Icons.arrow_back_ios,
                //     color: blackColor,
                //   ),
                //   backgroundColor: whiteColor,
                //   title: Text(
                //     'How To Pay',
                //     style: sanomatBlack.copyWith(fontWeight: medium, fontSize: 16),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: blackColor,
                    ),
                    Text(
                      'How To Pay',
                      style: sanomatBlack.copyWith(
                          fontWeight: medium, fontSize: 16),
                    ),
                    const SizedBox(),
                  ],
                ),
                const SizedBox(height: 52),
                Text(
                  'Pay in Stores Using GrabPay',
                  style:
                      sanomatGreen3.copyWith(fontSize: 20, fontWeight: medium),
                ),
                const SizedBox(height: 10),
                Text(
                  'You can pay for food and goods with GrabPay!',
                  style: sanomatSubtitle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 45),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/icon/payment.png',
                      width: 86,
                      height: 227,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Go cashless effortlessly - just scan QR code to pay.',
                              style: sanomatSubtitle.copyWith(fontSize: 16),
                            ),
                            Text(
                              'Leave cash behind - all you need is your Grab app!',
                              style: sanomatSubtitle.copyWith(fontSize: 16),
                            ),
                            Text(
                              'Enjoy perks from GrabRewards whenever you pay.',
                              style: sanomatSubtitle.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 74),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(greenColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text(
                      'Where can I use GrapPay?',
                      style:
                          poppinsWhite.copyWith(fontSize: 16, fontWeight: bold),
                    ),
                  ),
                ),
                const SizedBox(height: 86),
                Text(
                  'How to Pay Merchants',
                  style: sanomatGreen3.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Image.asset('assets/image/Line_pay_merchant.png',
                      width: 24, height: 431, fit: BoxFit.cover),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find the Grab QR Code in Stores',
                          style: sanomatBlack.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        const SizedBox(height: 6),
                        Text(
                            'Merchants accepting GrabPay will display this QR code.',
                            style: poppinsSubtitle),
                        const SizedBox(height: 22),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/image/pay_merchant.png',
                            width: 257,
                            height: 205,
                          ),
                        ),
                        const SizedBox(height: 28),
                        Text(
                          'Scan QR Code to Pay',
                          style: sanomatBlack.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        const SizedBox(height: 6),
                        Text('Tap Pay in the Grab app to start scanning.',
                            style: sanomatSubtitle),
                        const SizedBox(height: 40),
                        Text(
                          'Enter Amuont',
                          style: sanomatBlack.copyWith(
                              fontWeight: medium, fontSize: 18),
                        ),
                        const SizedBox(height: 6),
                        Text(
                            'Ensure the correct amount is entered to continue.',
                            style: sanomatSubtitle),
                      ],
                    ),
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
