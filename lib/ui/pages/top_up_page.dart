import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  bool isFilled = false;
  final TextEditingController ctrAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    handleTopUpResult() {
      return showModalBottomSheet(
        context: context,
        backgroundColor: whiteColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (BuildContext context) {
          return SizedBox(
            height: 361,
            child: Column(
              children: [
                const SizedBox(height: 58),
                Image.asset('assets/image/icon/Failed_icon.png',
                    width: 68, height: 68, fit: BoxFit.cover),
                const SizedBox(height: 37),
                Text(
                  'Top-up unsuccessful',
                  style:
                      sanomatBlack.copyWith(fontSize: 20, fontWeight: medium),
                ),
                const SizedBox(height: 10),
                Text(
                  'Your payment methods have not been charged.Please try again.',
                  style: poppinsSubtitle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 57),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Try Again',
                    style:
                        sanomatBlue4.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    handleBottomDialog(String amount) {
      return isFilled
          ? showModalBottomSheet(
              context: context,
              backgroundColor: whiteColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.close,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            'Review and confirm',
                            style: sanomatBlack.copyWith(
                                fontWeight: medium, fontSize: 16),
                          ),
                          const SizedBox(),
                        ],
                      ),
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payment method', style: sanomatBlack2),
                          Text('MasterCard 8604', style: sanomatBlack),
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Divider(),
                      const SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Top-up amount', style: sanomatBlack2),
                          Text('\$$amount.00', style: sanomatBlack),
                        ],
                      ),
                      const SizedBox(height: 18),
                      const Divider(),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: sanomatBlack.copyWith(
                                fontSize: 20, fontWeight: medium),
                          ),
                          Text(
                            '\$$amount.00',
                            style: sanomatBlack.copyWith(
                                fontSize: 20, fontWeight: medium),
                          ),
                        ],
                      ),
                      const SizedBox(height: 90),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            handleTopUpResult();
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(greenColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          child: Text(
                            'Top Up',
                            style: poppinsWhite.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : const SizedBox();
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: blackColor,
                  ),
                ),
                Text(
                  'Enter Amount',
                  style:
                      sanomatBlack.copyWith(fontWeight: medium, fontSize: 16),
                ),
                const SizedBox(),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Image.asset(
                  'assets/image/icon/mastercrad_payment.png',
                  width: 47,
                  height: 31,
                ),
                const SizedBox(width: 7),
                Expanded(child: Text('MasterCard 8604', style: sanomatBlack)),
                Icon(
                  Icons.arrow_forward_ios,
                  color: blackColor,
                  size: 15,
                ),
              ],
            ),
            const SizedBox(height: 85),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'S\$',
                  style:
                      sanomatBlack.copyWith(fontSize: 20, fontWeight: medium),
                ),
                const SizedBox(width: 5),
                SizedBox(
                  width: 100,
                  height: 60,
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      value == '' ? isFilled = false : isFilled = true;
                    }),
                    controller: ctrAmount,
                    onEditingComplete: () {
                      handleBottomDialog(ctrAmount.text);
                    },
                    cursorColor: const Color(0xffDBDBDB),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textInputAction: TextInputAction.next,
                    
                    maxLength: 3,
                    maxLines: 1,
                    style:
                        sanomatBlack.copyWith(fontSize: 50, fontWeight: medium),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontFamily: 'Sanomat Sans',
                            color: const Color(0xffDBDBDB),
                            fontSize: 50,
                            fontWeight: medium),
                        hintText: '0',
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        counterText: ''),
                  ),
                ),

                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Text(
                //     '*Max top up \$999',
                //     style: sanomatBlack2,
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 15),
            Text('Current balance: S\$0.11', style: sanomatBlack2),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  handleBottomDialog(ctrAmount.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      isFilled ? greenColor : subtitleColor3),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: Text(
                  'Next',
                  style: poppinsWhite.copyWith(fontSize: 16, fontWeight: bold),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
