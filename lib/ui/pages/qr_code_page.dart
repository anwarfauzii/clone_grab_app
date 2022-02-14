import 'package:flutter/material.dart';

import 'how_to_pay_page.dart';
import '../shared/theme.dart';
import 'top_up_page.dart';

class QRCodePage extends StatelessWidget {
  const QRCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323232).withOpacity(0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HowToPayPage(),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(right: 15, top: 15),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color(0xff323232),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'How to Pay?',
                        style: sanomatWhite,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 35),
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'Show Codes to Cashier',
                      style: sanomatBlack.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    const SizedBox(height: 30),
                    Image.asset('assets/image/barcode.png',
                        width: 327, height: 76),
                    const SizedBox(height: 23),
                    Text('Tap on codes to zoom In', style: sanomatBlack2),
                    const SizedBox(height: 35),
                    Image.asset(
                      'assets/image/qrcode.png',
                      width: 195,
                      height: 193,
                    ),
                    const SizedBox(height: 51),
                    Row(
                      children: [
                        Image.asset('assets/image/icon/Wallet-_icon.png',
                            width: 25, height: 16),
                        const SizedBox(width: 15),
                        Expanded(child: Text('S\$0.11', style: sanomatBlack2)),
                        SizedBox(
                          width: 90,
                          height: 25,
                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TopUpPage())),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff1281E7)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                            child: Text(
                              'Top Up',
                              style: poppinsWhite,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
